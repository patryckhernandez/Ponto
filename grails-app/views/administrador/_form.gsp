<%@ page import="ponto.Administrador" %>



<div class="fieldcontain ${hasErrors(bean: administradorInstance, field: 'email', 'error')} required">
	<label for="email">
		<g:message code="administrador.email.label" default="Email" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="email" required="" value="${administradorInstance?.email}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: administradorInstance, field: 'senha', 'error')} required">
	<label for="senha">
		<g:message code="administrador.senha.label" default="Senha" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="senha" required="" value="${administradorInstance?.senha}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: administradorInstance, field: 'empresa', 'error')} required">
	<label for="empresa">
		<g:message code="administrador.empresa.label" default="Empresa" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="empresa" name="empresa.id" from="${ponto.Empresa.list()}" optionKey="id" required="" value="${administradorInstance?.empresa?.id}" class="many-to-one"/>

</div>

