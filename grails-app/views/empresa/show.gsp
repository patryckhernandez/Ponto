<%@ page import="ponto.Empresa" %>
<!DOCTYPE html>
<html>
<head>
	<meta name="layout" content="_start">
	<g:set var="entityName" value="${message(code: 'empresa.label', default: 'Empresa')}" />
	<title><g:message code="default.show.label" args="[entityName]" /></title>
</head>
<body>
<div class="minhaEmpresa" role="main">
	<header></header>
	<ol class="olemp">

        <div class="emp">
		<g:if test="${empresaInstance?.nome}">
			<li>
				<span id="nome-label" class="labelNome"><g:message code="empresa.nome.label" default="Nome:" /></span>

				<span class="fieldNome" aria-labelledby="nome-label"><g:fieldValue bean="${empresaInstance}" field="nome"/></span>

			</li>

		</g:if>
        </div>
        <hr style="margin-left: -5%">
        <div class="emp">
		<g:if test="${empresaInstance?.cnpj}">
			<li class="fieldcontain">
				<span id="cnpj-label" class="labelNome"><g:message code="empresa.cnpj.label" default="Cnpj:" /></span>

				<span class="fieldNome" aria-labelledby="cnpj-label"><g:fieldValue bean="${empresaInstance}" field="cnpj"/></span>

			</li>

		</g:if>
        </div>
        <hr style="margin-left: -5%">
		<g:if test="${empresaInstance?.telefone}">
			<li class="fieldcontain">
				<span id="telefone-label" class="property-label"><g:message code="empresa.telefone.label" default="Telefone" /></span>

				<span class="property-value" aria-labelledby="telefone-label"><g:fieldValue bean="${empresaInstance}" field="telefone"/></span>

			</li>
		</g:if>

		<g:if test="${empresaInstance?.endereco}">
			<li class="fieldcontain">
				<span id="endereco-label" class="property-label"><g:message code="empresa.endereco.label" default="Endereco" /></span>

				<span class="property-value" aria-labelledby="endereco-label"><g:fieldValue bean="${empresaInstance}" field="endereco"/></span>

			</li>
		</g:if>

		<g:if test="${empresaInstance?.quantidadeFuncionario}">
			<li class="fieldcontain">
				<span id="quantidadeFuncionario-label" class="property-label"><g:message code="empresa.quantidadeFuncionario.label" default="Quantidade Funcionario" /></span>

				<span class="property-value" aria-labelledby="quantidadeFuncionario-label"><g:fieldValue bean="${empresaInstance}" field="quantidadeFuncionario"/></span>

			</li>
		</g:if>

		<g:if test="${empresaInstance?.administrador}">
			<li class="fieldcontain">
				<span id="administrador-label" class="property-label"><g:message code="empresa.administrador.label" default="Administrador" /></span>

				<g:each in="${empresaInstance.administrador}" var="a">
					<span class="property-value" aria-labelledby="administrador-label"><g:link controller="administrador" action="show" id="${a.id}">${a?.encodeAsHTML()}</g:link></span>
				</g:each>

			</li>
		</g:if>

		<g:if test="${empresaInstance?.funcionario}">
			<li class="fieldcontain">
				<span id="funcionario-label" class="property-label"><g:message code="empresa.funcionario.label" default="Funcionario" /></span>

				<g:each in="${empresaInstance.funcionario}" var="f">
					<span class="property-value" aria-labelledby="funcionario-label"><g:link controller="funcionario" action="show" id="${f.id}">${f?.encodeAsHTML()}</g:link></span>
				</g:each>

			</li>
		</g:if>

	</ol>
	<g:form url="[resource:empresaInstance, action:'delete']" method="DELETE">
		<fieldset class="buttons">
			<g:link class="edit" action="edit" resource="${empresaInstance}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
			<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
		</fieldset>
	</g:form>
</div>
</body>
</html>
