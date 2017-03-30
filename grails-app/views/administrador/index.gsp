
<%@ page import="ponto.Administrador" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="_start">
		<g:set var="entityName" value="${message(code: 'administrador.label', default: 'Administrador')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-administrador" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-administrador" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
				<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
			<thead>
					<tr>
					
						<g:sortableColumn property="email" title="${message(code: 'administrador.email.label', default: 'Email')}" />
					
						<g:sortableColumn property="senha" title="${message(code: 'administrador.senha.label', default: 'Senha')}" />
					
						<th><g:message code="administrador.empresa.label" default="Empresa" /></th>
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${administradorInstanceList}" status="i" var="administradorInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${administradorInstance.id}">${fieldValue(bean: administradorInstance, field: "email")}</g:link></td>
					
						<td>${fieldValue(bean: administradorInstance, field: "senha")}</td>
					
						<td>${fieldValue(bean: administradorInstance, field: "empresa")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${administradorInstanceCount ?: 0}" />
			</div>
		</div>
	</body>
</html>
