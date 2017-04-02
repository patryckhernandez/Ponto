package ponto
import javax.transaction.Transaction

import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional
import org.hibernate.SessionFactory
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.Transaction;

@Transactional(readOnly = true)
class FuncionarioController {

    def springSecurityService
    SessionFactory sessionFactory

    static allowedMethods = [save: "POST", update: "PUT", delete: "POST"]

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)

        User us = springSecurityService.getCurrentUser()
        def user = us.empresa

        respond Funcionario.findAllByEmpresa(user), model: [funcionarioInstance: Funcionario.count()]
        flash.message = "Funcion�rio apagado"
    }

    def show(Funcionario funcionarioInstance) {
        respond funcionarioInstance
    }

    def create() {
        respond new Funcionario(params)
    }

    @Transactional
    def save(Funcionario funcionarioInstance) {
        if (funcionarioInstance == null) {
            notFound()
            return
        }

        if (funcionarioInstance.hasErrors()) {
            respond funcionarioInstance.errors, view: 'create'
            return
        }


        User us = springSecurityService.getCurrentUser()
        def user = us.empresa
        print(user)
        funcionarioInstance.empresa = user

        funcionarioInstance.save flush: true
        redirect(controller: 'user', action: 'createFuncionario')
    }

    def edit(Funcionario funcionarioInstance) {
        respond funcionarioInstance
    }

    @Transactional
    def update(Funcionario funcionarioInstance) {
        if (funcionarioInstance == null) {
            notFound()
            return
        }

        if (funcionarioInstance.hasErrors()) {
            respond funcionarioInstance.errors, view: 'edit'
            return
        }

        funcionarioInstance.save flush: true
        redirect(action: 'edit')
    }

    def relatorio(){

        render view: "relatorioPonto"
        model:[relatorio:Funcionario]
    }

    @Transactional
    def gerarRelatorio(){

        def func = Funcionario.findByNomeLike("%"+params.nome+"%")
        if(func != null){
            def query = 'select f.nome, p.data, p.entrada, ' +
                    'ps.saida from Ponto p,  PontoSaida ps,  Funcionario f where f.id = :id'

            def list = sessionFactory.getCurrentSession().createSQLQuery(query, [id:func.id])
            list.each {item ->
                print("Seu nome é: ${item[0]}, data de entrada: ${item[1]}, hora: ${item[2]}, saida: ${item[3]}")
            }
            render(view:'relatorioPonto', model: [listed:list])

        }else{
            render(view:'relatorioPonto')
            flash.message = "Desculpe, não encontramos nenhum funcionário com este nome!"
        }
    }
    @Transactional
    def delete(Funcionario funcionarioInstance) {
        def us = Funcionario.findByCpf(funcionarioInstance.cpf)

        if(us) {
            us.delete flush: true
            redirect(action: "index")

        }else{
            redirect(action: "index")
            flash.warning = "Funcion�rio n�o existe!!"
        }
    }

    @Transactional
    def deleted(Funcionario funcionarioInstance){
        if(funcionarioInstance == null){
            notFound()
            return
        }
            funcionarioInstance.delete flush: true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'Funcionario.label', default: 'Funcionario'), funcionarioInstance.id])
                redirect action: "index", method: "GET"
            }
            '*' { render status: NO_CONTENT }
        }

    }
    protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'funcionario.label', default: 'Funcionario'), params.id])
                redirect action: "index", method: "GET"
            }
            '*' { render status: NOT_FOUND }
        }
    }
}
