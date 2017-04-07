        package ponto

        import grails.transaction.Transactional

        import java.sql.Date
        import java.text.DateFormat
        import java.text.SimpleDateFormat

        class PontoFuncionarioController {
            def springSecurityService
            def index() {
                User nome = springSecurityService.getCurrentUser()
                def name = nome.username
                render(view: 'baterPonto',model: [name:name])
            }
            @Transactional
            def batePonto(){

                DateFormat date = new SimpleDateFormat("dd/MM/yyyy")
                def dated = date.format(new java.util.Date())
                def data = date.parse(dated)

                User nome = springSecurityService.getCurrentUser()
                def name = nome.username

                User us = springSecurityService.getCurrentUser()
                def ref = us.funcionario
                DateFormat date2 = new SimpleDateFormat("HH:mm:ss")
                def stringHora = Calendar.getInstance().getTime()
                def hora = date2.format(stringHora)

                    def pt = Ponto.executeQuery("from Ponto where id = (select max(id) from Ponto where funcionario = :ref) and funcionario = :ref",[ref:ref])

                if(pt.size() != 0) {

                    def ptSai = PontoSaida.find("from PontoSaida ps where ps.ponto = :point", [point:pt])

                    if (pt != null && pt.data.contains(data) && ptSai == null) {
                        def ptId = Ponto.find("from Ponto where id = (select max(id) from Ponto where funcionario = :ref)",[ref:ref])

                            PontoSaida ps = new PontoSaida()
                            ps.saida = hora
                            ps.data = data
                            ps.funcionario = ref
                            ps.ponto = ptId
                            ps.save(flush: true, failOnError: true)

                    } else {
                        Ponto ponto = new Ponto()
                        ponto.entrada = hora
                        ponto.data = data
                        ponto.funcionario = ref
                        ponto.save(flush: true, failOnError: true)


                    }
                }else{
                    Ponto ponto = new Ponto()
                    ponto.entrada = hora
                    ponto.data = data
                    ponto.funcionario = ref
                    ponto.save(flush: true, failOnError: true)
                }

                render (view: 'baterPonto', model: [data:data, name:name, hora: hora])

            }

        }
