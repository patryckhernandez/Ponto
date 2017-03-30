package ponto

/**
 * Created by patryck on 31/01/2017.
 */
class PontoSaida {

    String saida
    Date data
    Ponto ponto

    static constraints = {
        saida()
    }

    static belongsTo = [funcionario:Funcionario]

}
