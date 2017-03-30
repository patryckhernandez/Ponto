<%@ page language="java" contentType="text/html; charset=UTF-8"
        pageEncoding="ISO-8859-1" %>
<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta charset="utf-8"/>
    <meta name="viewport"
          content="width=device-width, initial-scale=1, maximum-scale=1"/>
    <meta name="description" content=""/>
    <meta name="author" content=""/>

    <title>ON-Sistema de Ponto web</title>
    %{--<link rel="stylesheet" href="${resource(dir: 'css', file: 'bootstrap.min.css')}" type="text/css">
    <link rel="stylesheet" href="${resource(dir: 'css', file: 'bootstrap.css')}" type="text/css">
    <link rel="stylesheet" href="${resource(dir: 'css', file: 'font-awesome.css')}" type="text/css">
    <link rel="stylesheet" href="${resource(dir: 'css', file: 'styles.css')}" type="text/css">
    <script type="javascript/text" src="/js/bootstrap.js"></script>
    <script type="javascript/text" src="/js/custom.js"></script>
    <script type="javascript/text" src="/js/jquery-1.11.1.js"></script>--}%
    <asset:stylesheet href="application.css"/>
    <asset:javascript src="application.js"/>
    <link rel="stylesheet" href="${resource(dir: 'css', file: 'style.css')}" type="text/css">
</head>

<body>

<div class="navbar navbar-inverse navbar-fixed-top ">
    <div class="container">
        <div class="navbar-header">
            <button type="button" class="navbar-toggle" data-toggle="collapse"
                    data-target=".navbar-collapse">
                <span class="icon-bar"></span> <span class="icon-bar"></span> <span
                    class="icon-bar"></span>
            </button>
            <img class="logotipeP" src="images/logo3.png"/>
        </div>

        <div class="navbar-collapse collapse move-me">
            <ul class="nav navbar-nav navbar-right set-links">
                <li><a href="/Ponto" class="active-menu-item">HOME</a></li>
                <li><g:link controller="pontoFuncionario" action="index">BATER PONTO</g:link></li>
                <li><g:link controller="dash" action="index">DASHBOARD</g:link></li>
                <li><a href="#stats-download">CONTATO</a></li>
                <li><a href="#footer-sec">SOBRE</a></li>
            </ul>
        </div>

    </div>
</div>

<section id="home-sec">
    <div class="ov overlay text-center">
        <h1>Solução Online de Controle de Ponto</h1>
        <hr class="hr-set"/>

        <p>Gerenciando com Sabedoria</p>
    </div>
</section>


<div class="how">
    <div class="pric">
        <div class="vej">
            <asset:image src="tecno.jpg"/>

            <h1 class="heh">Controle de ponto online</h1>

            <p>O nosso sistema foi feito na medida para o controle de ponto
            de horas online. O ON monitora e rastreia o ponto dos seus
            funcionários internos e externos.</p>

        </div>

        <div class="vej">
            <asset:image src="dsfsdf.jpg"/>

            <h1 class="her">Gerenciamento</h1>

            <p>Gerencie seus funcionários com acesso ao banco de horas
            trabalhadas, gráficos para acompanhamento e geração de relatórios.</p>

        </div>

        <div class="vej">
            <asset:image src="kdjg.jpg"/>

            <h1 class="her">Geolocalização</h1>

            <p>O nosso sistema conta com a geolocalização, assim localizando
            o seu funcionário onde quer que esteja, evitando qualquer tipo de
            fraude no registro do ponto.</p>

        </div>
    </div>

    <div class="acd">
        <g:link controller="empresa" action="create">Cadastre-se</g:link>
    </div>
</div>

<section id="footer-sec">
    <div class="foot">
        <div class="footec">
            <h1>Nossa Empresa</h1>
            <p>Nossa empresa está localizada em Natal-RN,
            focada em oferecer uma solução de controle
            de ponto de qualidade para a sua empresa.</p>
        </div>

    </div>
</section>

<div class="copy-txt">
    <div class="container">
        <div class="row">
            <div class="col-md-12 set-foot">ON. Todos Direitos Reservados/
            Design by: Lucas Aoyama, Patryck Hernandez</div>
        </div>
    </div>
</div>
</body>
</html>
