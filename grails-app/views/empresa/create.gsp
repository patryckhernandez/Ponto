<!DOCTYPE html>
<html>
<head>
	<meta name="layout" content="create">
	<g:set var="entityName" value="${message(code: 'empresa.label', default: 'Empresa')}" />
	<title><g:message code="default.create.label" args="[entityName]" /></title>
	<link rel="stylesheet" href="${resource(dir: 'startTemplate/css', file: 'styles.css')}" type="text/css">
    <link rel="stylesheet" href="${resource(dir: 'startTemplate/font-awesome/css', file:'font-awesome.min.css')}" type="text/css">
</head>
<body>
<g:render template="/layouts/top"></g:render>
<div id="create-empresa" class="content scaffold-create" role="main">
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
	<g:form url="[resource:empresaInstance, action:'save']" >
		<fieldset class="form">
			<g:render template="formCad"/>
		</fieldset>
		<fieldset class="buttons">
			<g:submitButton name="create" class=" butt btn btn-info" value="${message(code: 'default.button.create.label', default: 'Create')}" />
		</fieldset>
	</g:form>
	<img src="${resource(dir:"images", file: "mac3.png") }" class="mac">
</div>
<g:render template="/layouts/footer"></g:render>
</body>
</html>