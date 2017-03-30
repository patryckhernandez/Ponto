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
                <label class="labelNm">Busca por Nome</label>
                <g:textField name="nome" class="inpttNome" placeholder="NOME" value="${relatorio?.nome}" />
                <g:submitButton name="buscar" class=" btu btn-info" value="Buscar"/>
            </g:form>
            </div>
            <g:if test="${flash.message}">
            <div class="tert">
                <p class="warn"> *   ${flash.message}</p>
            </div>
            </g:if>
        </div>


<g:if test="${listed != null}">
    <div class="table-responsive tabes">

     <table class="table table-bordered">
         <thead>
         <tr class="coli">
            <td>NOME</td>
            <td>DATA</td>
            <td>ENTRADA</td>
            <td>SAÍDA</td>
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
