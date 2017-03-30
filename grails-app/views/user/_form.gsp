<%@ page import="ponto.User" %>


<div class="orguser">
	<header class="headcadcreate">
		<h1><i class="fa fa-building-o" aria-hidden="true"></i> Cadastro Usuário</h1>
	</header>
	<div class="fieldcontain ${hasErrors(bean: userInstance, field: 'username', 'error')} required">
		<label for="username" class="labels">
			<g:message code="user.username.label" default="Username" />
			<span class="required-indicator">*</span>
		</label>
		<g:textField class="inptt" name="username" required="" value="${userInstance?.username}"/>

	</div>

	<div class="fieldcontain ${hasErrors(bean: userInstance, field: 'password', 'error')} required">
		<label for="password" class="labels">
			<g:message code="user.password.label" default="Password" />
			<span class="required-indicator">*</span>
		</label>
		<g:textField class="inptt" name="password" required="" value="${userInstance?.password}"/>

	</div>
	%{--<div class="fieldcontain ${hasErrors(bean: userInstance, field: 'empresa', 'error')} required">
		<label for="empresa" class="labels">
			<g:message code="user.empresa.label" default="Empresa" />
			<span class="required-indicator">*</span>
		</label>
		<g:select id="empresa" name="empresa.id" from="${ponto.Empresa.list()}" optionKey="id" required="" value="${userInstance?.empresa?.id}" class=" selecti many-to-one"/>

	</div>--}%

</div>
</div>
