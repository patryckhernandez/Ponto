<%@ page import="ponto.Funcionario" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="_start">
		<g:set var="entityName" value="${message(code: 'funcionario.label', default: 'Funcionario')}" />
		<title><g:message code="default.edit.label" args="[entityName]" /></title>
	</head>
	<body>

		<div id="edit-funcionario" class="content scaffold-edit" role="main">
			<h1 class="dashboard"><i class="fa fa-tachometer" aria-hidden="true"></i> Editar Funcionário</h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<g:hasErrors bean="${funcionarioInstance}">
			<ul class="errors" role="alert">
				<g:eachError bean="${funcionarioInstance}" var="error">
				<li <g:if test="${error in org.springframework.validation.FieldError}">data-field-id="${error.field}"</g:if>><g:message error="${error}"/></li>
				</g:eachError>
			</ul>
			</g:hasErrors>
			<g:form url="[resource:funcionarioInstance, action:'update']" method="PUT" >
				<g:hiddenField name="version" value="${funcionarioInstance?.version}" />
				<fieldset class="form">
					<g:render template="form2"/>
				</fieldset>
				<fieldset class="buttons">
					<g:actionSubmit class="buttin btn btn-info" action="update" value="${message(code: 'default.button.update.label', default: 'Update')}" />
				</fieldset>
			</g:form>

				<g:link class="butted btn btn-info" controller="user" action="createFuncionario" >Criar Usuário</g:link>

		</div>
	</body>
</html>
