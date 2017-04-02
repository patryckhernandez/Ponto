        package ponto

        import java.sql.Date
        import java.text.DateFormat
        import java.text.SimpleDateFormat

        class PontoFuncionarioController {
            def springSecurityService
            def cont = true
            def index() {
                User nome = springSecurityService.getCurrentUser()
                def name = nome.username
                render(view: 'baterPonto',model: [name:name])
            }

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

                def pt = Ponto.findByFuncionario(ref)

                if (pt != null && pt.data == data && cont == true) {
                    PontoSaida ps = new PontoSaida()
                    ps.saida = hora
                    ps.data = data
                    ps.funcionario = ref
                    ps.save flush: true
                    cont = false

                } else {
                    Ponto ponto = new Ponto()
                    ponto.entrada = hora
                    ponto.data = data
                    ponto.funcionario = ref
                    cont = true
                    ponto.save flush: true


                }

                render (view: 'baterPonto', model: [data:data, name:name, hora: hora])

            }

        }
