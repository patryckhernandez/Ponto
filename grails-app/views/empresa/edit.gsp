<%@ page import="ponto.Empresa" %>
<!DOCTYPE html>
<html>
<head>
	<meta name="layout" content="_start">
	<g:set var="entityName" value="${message(code: 'empresa.label', default: 'Empresa')}" />
	<title><g:message code="default.edit.label" args="[entityName]" /></title>
</head>
<body>
<h1 class="dashboard"><i class="fa fa-tachometer" aria-hidden="true"></i> Minha Empresa</h1>
<div id="edit-empresa" class="content scaffold-edit" role="main">

	<g:if test="${flash.message}">
		<div class="message" role="status">${flash.message}</div>
	</g:if>
	<g:hasErrors bean="${empresaInstance}">
		<ul class="errors" role="alert">
			<g:eachError bean="${empresaInstance}" var="error">
				<li <g:if test="${error in org.springframework.validation.FieldError}">data-field-id="${error.field}"</g:if>><g:message error="${error}"/></li>
			</g:eachError>
		</ul>
	</g:hasErrors>
	<g:form url="[resource:empresaInstance, action:'update']" method="PUT" >
		<g:hiddenField name="version" value="${empresaInstance?.version}" />
		<fieldset class="form">
			<g:render template="form"/>
		</fieldset>
		<fieldset class="buttons">
			<g:actionSubmit class="buttin btn btn-info" action="update" value="${message(code: 'default.button.update.label', default: 'Update')}" />
		</fieldset>
	</g:form>
</div>
</body>
</html>