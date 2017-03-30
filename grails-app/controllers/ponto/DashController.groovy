package ponto

class DashController {
    def springSecurityService
    def index() {
        User us = springSecurityService.getCurrentUser()
        def name = us.username
        render(view: '/dashboard',model: [name:name] )
    }
}
