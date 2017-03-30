package ponto

class Administrador {
    String email
    String senha
    Empresa empresa

    static constraints = {
    email()
    senha()
    }
}
