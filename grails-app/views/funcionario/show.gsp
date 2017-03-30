
<%@ page import="ponto.Funcionario" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="_start">
		<g:set var="entityName" value="${message(code: 'funcionario.label', default: 'Funcionario')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>

		<div id="show-funcionario" class="content scaffold-show" role="main">
			<h1>Funcionário</h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<div class="jet">
			<ol class="property-list funcionario">
			
				<g:if test="${funcionarioInstance?.cpf}">
				<li class="fieldcontain int">
					<span id="cpf-label" class="property-label"><g:message code="funcionario.cpf.label" default="Cpf" /></span>
					
						<span class="property-value" aria-labelledby="cpf-label"><g:fieldValue bean="${funcionarioInstance}" field="cpf"/></span>
					
				</li>
					<hr class="linha">
				</g:if>
			
				<g:if test="${funcionarioInstance?.nome}">
				<li class="fieldcontain int">
					<span id="nome-label" class="property-label"><g:message code="funcionario.nome.label" default="Nome" /></span>
					
						<span class="property-value" aria-labelledby="nome-label"><g:fieldValue bean="${funcionarioInstance}" field="nome"/></span>
					
				</li>
                    <hr class="linha">
				</g:if>
			
				<g:if test="${funcionarioInstance?.telefone}">
				<li class="fieldcontain int">
					<span id="telefone-label" class="property-label"><g:message code="funcionario.telefone.label" default="Telefone" /></span>
					
						<span class="property-value" aria-labelledby="telefone-label"><g:fieldValue bean="${funcionarioInstance}" field="telefone"/></span>
					
				</li>
                    <hr class="linha">
				</g:if>
			
				<g:if test="${funcionarioInstance?.endereco}">
				<li class="fieldcontain int">
					<span id="endereco-label" class="property-label"><g:message code="funcionario.endereco.label" default="Endereco" /></span>
					
						<span class="property-value" aria-labelledby="endereco-label"><g:fieldValue bean="${funcionarioInstance}" field="endereco"/></span>
					
				</li>
                    <hr class="linha">
				</g:if>
			
				<g:if test="${funcionarioInstance?.empresa}">
				<li class="fieldcontain int">
					<span id="empresa-label" class="property-label"><g:message code="funcionario.empresa.label" default="Empresa" /></span>
					
						<span class="property-value" aria-labelledby="empresa-label"><g:link controller="empresa" action="show" id="${funcionarioInstance?.empresa?.id}">${funcionarioInstance?.empresa?.encodeAsHTML()}</g:link></span>
					
				</li>
                    <hr class="linha">
				</g:if>
			
				<g:if test="${funcionarioInstance?.ponto}">
				<li class="fieldcontain int">
					<span id="ponto-label" class="property-label"><g:message code="funcionario.ponto.label" default="Ponto" /></span>
					
						<g:each in="${funcionarioInstance.ponto}" var="p">
						<span class="property-value" aria-labelledby="ponto-label"><g:link controller="ponto" action="show" id="${p.id}">${p?.encodeAsHTML()}</g:link></span>
						</g:each>
					
				</li>
                    <hr class="linha">
				</g:if>
			
			</ol>
				<g:form url="[resource:funcionarioInstance, action:'deleted']" method="DELETE">
					<fieldset class="buttons">
						<g:link class="edit" action="edit" resource="${funcionarioInstance}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
						<g:actionSubmit class="btn btn-warning" action="deleted" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
					</fieldset>
				</g:form>
			</div>
		</div>
	</body>
</html>
