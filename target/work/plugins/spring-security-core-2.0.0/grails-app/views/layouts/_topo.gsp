<%@ page language="java" contentType="text/html; charset=UTF-8"
        pageEncoding="ISO-8859-1" %>
<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta charset="utf-8"/>
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1"/>
    <meta name="description" content=""/>
    <meta name="author" content=""/>

    <title>ON</title>
  %{--  <link rel="stylesheet" href="${resource(dir: 'css', file: 'bootstrap.min.css')}" type="text/css">
    <link rel="stylesheet" href="${resource(dir: 'css', file: 'bootstrap.css')}" type="text/css">
    <link rel="stylesheet" href="${resource(dir: 'css', file: 'font-awesome.css')}" type="text/css">
    <link rel="stylesheet" href="${resource(dir: 'css', file: 'styles.css')}" type="text/css">
    <script type="javascript/text" src="/js/bootstrap.js"></script>
    <script type="javascript/text" src="/js/custom.js"></script>--}%
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
            <a class="navbar-brand" href="Index.jsp"><strong style=""></strong>
                ON<small>Seu ponto online</small></a>
        </div>

        <div class="navbar-collapse collapse move-me">
            <ul class="nav navbar-nav navbar-right set-links">
                <li><a href="/Ponto" class="active-menu-item">HOME</a></li>
                <li><a href="Func.jsp">BATER PONTO</a></li>
                <li><a href="#stats-download">CONTATO</a></li>
                <li><a href="blank.html">SOBRE</a></li>
            </ul>
        </div>

    </div>
</div>
<section class="headline-sec">
    <div class="overlay ">
        <h3 style="font-family:sans-serif;">Login</h3>

    </div>
</section>

</body>
</html>