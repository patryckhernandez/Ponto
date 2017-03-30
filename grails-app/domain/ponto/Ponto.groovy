package ponto

class Ponto {
    String entrada
    Date data

    static constraints = {
    entrada()
    }

    static belongsTo = [funcionario:Funcionario, pontoSaida: PontoSaida]
}
