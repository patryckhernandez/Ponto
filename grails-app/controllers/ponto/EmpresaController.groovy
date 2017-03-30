package ponto

import grails.plugin.springsecurity.SpringSecurityService

import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional

@Transactional(readOnly = true)
class EmpresaController {
    def springSecurityService
    static allowedMethods = [save: "POST",update: "PUT", delete: "DELETE"]

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond Empresa.list(params), model: [empresaInstanceCount: Empresa.count()]
    }

    def create() {
        respond new Empresa(params)
    }

    @Transactional
    def save(Empresa empresaInstance) {
        if (empresaInstance == null) {
            notFound()
            return
        }

        if (empresaInstance.hasErrors()) {
            respond empresaInstance.errors, view: 'create'
            return
        }

        empresaInstance.save flush: true


        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.created.message', args: [message(code: 'empresa.label', default: 'Empresa'), empresaInstance.id])
                redirect(controller: 'user', action: 'create')
            }
            '*' { respond empresaInstance, [status: CREATED] }
        }
    }

    def edit(){
        User us = springSecurityService.getCurrentUser()
        def empresa = us.empresa
        respond empresa
    }
    @Transactional
    def update(Empresa empresaInstance) {
        if (empresaInstance == null) {
            notFound()
            return
        }

        if (empresaInstance.hasErrors()) {
            respond empresaInstance.errors, view: 'edit'
            return
        }

        empresaInstance.save flush: true
        redirect(action: 'edit')
    }

    @Transactional
    def delete(Empresa empresaInstance) {

        if (empresaInstance == null) {
            notFound()
            return
        }

        empresaInstance.delete flush: true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'Empresa.label', default: 'Empresa'), empresaInstance.id])
                redirect action: "index", method: "GET"
            }
            '*' { render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'empresa.label', default: 'Empresa'), params.id])
                redirect action: "index", method: "GET"
            }
            '*' { render status: NOT_FOUND }
        }
    }
}
