import ponto.Requestmap
import ponto.Role
import ponto.User
import ponto.UserRole

class BootStrap {

    def init = { servletContext ->
        /*def admin = new User(username: "admin", password: "admin", enabled: true).save(flush: true)
        def user = new User(username: "user", password: "user", enabled: true).save(flush: true)
        def adminRole = new Role(authority: 'ROLE_ADMIN').save(flush: true)
        def userRole = new Role(authority: 'ROLE_USER').save(flush: true)
        UserRole.create(admin, adminRole)
        UserRole.create(user, userRole)
*/
        //for (String url in [
        //    '/', '/index', '/index.gsp', '/**/favicon.ico',
        //      '/**/js/**', '/**/css/**', '/**/images/**',
        //     '/login', '/login.*', '/login/*'])
        //  new Requestmap(url: url, configAttribute: 'permitAll').save()
      //  new Requestmap(url:'/**', configAttribute:'ROLE_USER').save()
    }

    def destroy = {

    }
}
