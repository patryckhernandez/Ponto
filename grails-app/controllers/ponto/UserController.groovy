package ponto


import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional

@Transactional(readOnly = true)
class UserController {
    def springSecurityService
    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond User.list(params), model: [userInstanceCount: User.count()]
    }

    def show(User userInstance) {
        respond userInstance
    }

    def create() {
        respond new User(params)
    }
    def createFuncionario(){
        respond new User(params)
    }
    @Transactional
    def saveFuncionario(User userInstance){
        if (userInstance == null) {
            notFound()
            return
        }

        if (userInstance.hasErrors()) {
            respond userInstance.errors, view: 'create'
            return
        }
        def funcionario = Funcionario.find("from Funcionario where id = (select max(id) from Funcionario)")
        print(funcionario)
        userInstance.funcionario = funcionario
        userInstance.save()

        def roleFuncionario = Role.findByAuthority('ROLE_FUNCIONARIO')
        UserRole.create(userInstance, roleFuncionario, true)
        redirect(controller: 'dash', action: 'index')

    }
    @Transactional
    def save(User userInstance) {
        if (userInstance == null) {
            notFound()
            return
        }

        if (userInstance.hasErrors()) {
            respond userInstance.errors, view: 'create'
            return
        }

        def emp = Empresa.find("from Empresa where id = (select max(id) from Empresa)")
        userInstance.empresa = emp
        userInstance.save flush: true

        def roleUser = Role.findByAuthority('ROLE_ADMIN')
        UserRole.create(userInstance, roleUser, true)
        redirect(controller: 'login', action: 'auth')
    }

    def edit() {
        User us = springSecurityService.getCurrentUser()
        //def user = us.id
        print(us)
        respond us
    }

    @Transactional
    def update(User userInstance) {
        if (userInstance == null) {
            notFound()
            return
        }

        if (userInstance.hasErrors()) {
            respond userInstance.errors, view:'edit'
            return
        }
        userInstance.save flush:true
        redirect(action: 'edit')
    }

    @Transactional
    def delete(User userInstance) {

        if (userInstance == null) {
            notFound()
            return
        }

        userInstance.delete flush: true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'User.label', default: 'User'), userInstance.id])
                redirect action: "index", method: "GET"
            }
            '*' { render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'user.label', default: 'User'), params.id])
                redirect action: "index", method: "GET"
            }
            '*' { render status: NOT_FOUND }
        }
    }
}
