<%@ page import="ponto.Empresa" %>
<!DOCTYPE html>
<html>
<head>
	<meta name="layout" content="_start">
	<g:set var="entityName" value="${message(code: 'empresa.label', default: 'Empresa')}" />
	<title><g:message code="default.list.label" args="[entityName]" /></title>
</head>
<body>

<div id="list-empresa" class="col-lg-6 tab" role="main">

	<g:if test="${flash.message}">
		<div class="message" role="status">${flash.message}</div>
	</g:if>
	<div class="table-responsive tab">
		<table class="table table-bordered">
			<thead>
			<tr class="coli">

				<g:sortableColumn property="nome" title="${message(code: 'empresa.nome.label', default: 'Nome')}" />

				<g:sortableColumn property="cnpj" title="${message(code: 'empresa.cnpj.label', default: 'Cnpj')}" />

				<g:sortableColumn property="telefone" title="${message(code: 'empresa.telefone.label', default: 'Telefone')}" />

				<g:sortableColumn property="endereco" title="${message(code: 'empresa.endereco.label', default: 'Endereco')}" />

				<g:sortableColumn property="quantidadeFuncionario" title="${message(code: 'empresa.quantidadeFuncionario.label', default: 'Quantidade Funcionario')}" />

			</tr>
			</thead>
			<tbody>
			<g:each in="${empresaInstanceList}" status="i" var="empresaInstance">
				<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">

					<td>${fieldValue(bean: empresaInstance, field: "nome")}</td>

					<td>${fieldValue(bean: empresaInstance, field: "cnpj")}</td>

					<td>${fieldValue(bean: empresaInstance, field: "telefone")}</td>

					<td>${fieldValue(bean: empresaInstance, field: "endereco")}</td>

					<td>${fieldValue(bean: empresaInstance, field: "quantidadeFuncionario")}</td>

				</tr>
			</g:each>
			</tbody>
		</table>
	</div>
	<div class="pagination">
		<g:paginate total="${empresaInstanceCount ?: 0}" />
	</div>
</div>
</body>
</html>