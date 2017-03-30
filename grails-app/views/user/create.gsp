<!DOCTYPE html>
<html>
<head>
	<meta name="layout" content="_start">
	<g:set var="entityName" value="${message(code: 'user.label', default: 'User')}" />
	<title><g:message code="default.create.label" args="[entityName]" /></title>
</head>
<body>

<div id="create-user" class="content scaffold-create" role="main">
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
	<g:form url="[resource:userInstance, action:'save']" >
		<fieldset class="form">
			<g:render template="form"/>
		</fieldset>
		<fieldset class="buttons">
			<g:submitButton name="create" class=" butt btn btn-info" value="${message(code: 'default.button.create.label', default: 'Create')}" />
		</fieldset>
	</g:form>

</div>
</body>
</html>
