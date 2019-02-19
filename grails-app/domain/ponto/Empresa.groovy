package ponto

class Empresa {
    String nome
    String cnpj
    String telefone
    String endereco
    Integer quantidadeFuncionario
    
    
    static constraints = {
    user(nullable: true)
    nome()
    cnpj()
    telefone()
    endereco()
    quantidadeFuncionario()
    }
    static hasOne = [user:User]
    static hasMany = [funcionario: Funcionario, administrador:Administrador]
    String toString(){
        "${nome}"
    }

}
