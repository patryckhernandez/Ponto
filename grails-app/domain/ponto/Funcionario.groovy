package ponto

class Funcionario {
    String nome
    String cpf
    String telefone
    String endereco
    Date idade
    String sexo
    String pis
    String moradia
    
    static constraints = {
   empresa(nullable: true)
   user(nullable: true)
   cpf()
   nome()
   telefone()
   endereco()
   idade ()
   sexo ()
   pis ()
    }
    static belongsTo = [empresa:Empresa]
    static hasOne =[user:User]
    static hasMany = [ponto: Ponto]

}
