<%@page import="ponto.Funcionario"%>
<!DOCTYPE html>
<html>
<head>
    <meta name="layout" content="_startFuncionario">
    <title>Bater Ponto</title>
    <link rel="stylesheet" href="${resource(dir: 'startTemplate/css', file: 'styles.css')}" type="text/css">
    <link rel="stylesheet" href="${resource(dir: 'startTemplate/font-awesome/css', file:'font-awesome.min.css')}" type="text/css">

</head>
<body>

    <g:if test="${flash.message}">
        <div class="mest">
            <h1><i class="fa fa-check" aria-hidden="true"></i> ${flash.message}</h1>
        </div>
    </g:if>

<div class="apre">
    <header class="headPont">
        <h1><i class="fa fa-user" aria-hidden="true"></i> Registro de Ponto</h1>
    </header>

        <section class="status">
            <article>
                <p><span id="status">Por favor aguarde enquanto nós tentamos localizar você...</span></p>
            </article>
        </section>
        <div class="divIn">
            <header class="headPont2">
                <h1><i class="fa fa-check-square" aria-hidden="true"></i> ${name}</h1>
            </header>
            <hr class="linhaHor">
            <h2 class="dataHora">Data e Hora: ${data.toString()} ${hora}</h2>
            <hr class="linhaHor">
        </div>

        <g:link controller="pontoFuncionario" action="batePonto" class="butap3 btn btn-primary"><i class="fa fa-clock-o" aria-hidden="true"></i> Registrar Ponto</g:link>
    </div>
</body>
</html>