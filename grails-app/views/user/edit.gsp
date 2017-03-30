<%@ page import="ponto.User" %>
<!DOCTYPE html>
<html>
<head>
	<meta name="layout" content="_start">
	<g:set var="entityName" value="${message(code: 'user.label', default: 'User')}" />
	<title><g:message code="default.edit.label" args="[entityName]" /></title>
</head>
<body>
<h1 class="dashboard"><i class="fa fa-tachometer" aria-hidden="true"></i> Editar usuário</h1>
<div id="edit-user" class="content scaffold-edit" role="main">

	<g:if test="${flash.message}">
		<div class="message" role="status">${flash.message}</div>
	</g:if>
	<g:hasErrors bean="${userInstance}">
		<ul class="errors" role="alert">
			<g:eachError bean="${userInstance}" var="error">
				<li <g:if test="${error in org.springframework.validation.FieldError}">data-field-id="${error.field}"</g:if>><g:message error="${error}"/></li>
			</g:eachError>
		</ul>
	</g:hasErrors>
	<g:form url="[resource:userInstance, action:'update']" method="PUT" >
		<g:hiddenField name="version" value="${userInstance?.version}" />
		<fieldset class="form">
			<g:render template="form2"/>
		</fieldset>
		<fieldset class="buttons">
			<g:actionSubmit class="butt btn btn-info" action="update" value="${message(code: 'default.button.update.label', default: 'Update')}" />
		</fieldset>
	</g:form>
</div>
</body>
</html>
