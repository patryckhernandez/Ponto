package ponto


import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional

@Transactional(readOnly = true)
class RequestmapController {

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond Requestmap.list(params), model: [requestMapInstanceCount: Requestmap.count()]
    }

    def show(Requestmap requestMapInstance) {
        respond requestMapInstance
    }

    def create() {
        respond new Requestmap(params)
    }

    @Transactional
    def save(Requestmap requestMapInstance) {
        if (requestMapInstance == null) {
            notFound()
            return
        }

        if (requestMapInstance.hasErrors()) {
            respond requestMapInstance.errors, view: 'create'
            return
        }

        requestMapInstance.save flush: true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.created.message', args: [message(code: 'requestMap.label', default: 'Requestmap'), requestMapInstance.id])
                redirect requestMapInstance
            }
            '*' { respond requestMapInstance, [status: CREATED] }
        }
    }

    def edit(Requestmap requestMapInstance) {
        respond requestMapInstance
    }

    @Transactional
    def update(Requestmap requestMapInstance) {
        if (requestMapInstance == null) {
            notFound()
            return
        }

        if (requestMapInstance.hasErrors()) {
            respond requestMapInstance.errors, view: 'edit'
            return
        }

        requestMapInstance.save flush: true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'Requestmap.label', default: 'Requestmap'), requestMapInstance.id])
                redirect requestMapInstance
            }
            '*' { respond requestMapInstance, [status: OK] }
        }
    }

    @Transactional
    def delete(Requestmap requestMapInstance) {

        if (requestMapInstance == null) {
            notFound()
            return
        }

        requestMapInstance.delete flush: true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'Requestmap.label', default: 'Requestmap'), requestMapInstance.id])
                redirect action: "index", method: "GET"
            }
            '*' { render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'requestMap.label', default: 'Requestmap'), params.id])
                redirect action: "index", method: "GET"
            }
            '*' { render status: NOT_FOUND }
        }
    }
}
