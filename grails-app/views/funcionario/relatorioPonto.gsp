<%@ page import="ponto.Funcionario" %>
<!DOCTYPE html>
        <html>
            <head>
                <meta name="layout" content="_start">
            <title></title>
        </head>
    <body>

        <div class="orgtest">
            <header class="headcad">
                <h1><i class="fa fa-users" aria-hidden="true"></i>  Buscar Ponto</h1>
            </header>

            <div class="divBusca">
            <g:form url="[controller:'funcionario', action: 'gerarRelatorio']" method="POST">
                <label class="labelNm">NOME</label>
                <g:textField name="nome" class="inpttNome" placeholder="NOME" value="${relatorio?.nome}" />
                <label class="labelNmCp">CPF</label>
                <g:textField name="cpf" class="inpttcpf" placeholder="CPF" value="${relatorio?.cpf}" />
                <fieldset class="btu">
                <g:submitButton name="buscar" class="butting btn btn-info" value="Buscar"/>
                </fieldset>
            </g:form>
            </div>
            <g:if test="${flash.message}">
            <div class="tert">
                <p class="warn"> *  ${flash.message}</p>
            </div>
            </g:if>
        </div>


<g:if test="${listed != null}">
    <div class="table-responsive tabes">

     <table class="table table-bordered">
         <thead>
         <tr class="coli">
            <td><a href="#">NOME</a></td>
            <td><a href="#">DATA</a></td>
            <td><a href="#">ENTRADA</a></td>
            <td><a href="#">SAÍDA</a></td>
        </tr>
         </thead>

        <g:each in="${listed}" var="item">
            <tr>
                <td>${item[0]}</td>
                <td>${item[1]}</td>
                <td>${item[2]}</td>
                <td>${item[3]}</td>
            </tr>
        </g:each>
    </table>
</g:if>
    </div>
</body>
</html>
