
<%@ page import="ponto.Funcionario" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="_start">
		<g:set var="entityName" value="${message(code: 'funcionario.label', default: 'Funcionario')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>

		<div id="list-funcionario" class="content scaffold-list" role="main">
			<h1 class="dashboard"><i class="fa fa-tachometer" aria-hidden="true"></i> Listagem de Funcionários</h1>
			<g:if test="${flash.warning}">
				<div class="message_error" role="status" class="message_error" style="font-size: medium;color: #ff0000;">${flash.warning}</div>
			</g:if>

			<div class="table-responsive tab">
			<table class="table table-bordered">

			<thead>

					<tr class="coli">

						<g:sortableColumn class="col" property="cpf" title="${message(code: 'funcionario.cpf.label', default: 'Cpf')}" />

						<g:sortableColumn class="col" property="nome" title="${message(code: 'funcionario.nome.label', default: 'Nome')}" />

						<g:sortableColumn class="col" property="idade" title="${message(code: 'funcionario.idade.label', default: 'Idade')}" />

						<g:sortableColumn class="col" property="sexo" title="${message(code: 'funcionario.sexo.label', default: 'Sexo')}" />

						<g:sortableColumn class="col" property="pis" title="${message(code: 'funcionario.pis.label', default: 'Pis')}" />
					
						<g:sortableColumn class="col" property="telefone" title="${message(code: 'funcionario.telefone.label', default: 'Telefone')}" />
					
						<g:sortableColumn class="col" property="endereco" title="${message(code: 'funcionario.endereco.label', default: 'Endereco')}" />
					
						<th><g:message code="funcionario.empresa.label" default="Empresa" /></th>

					</tr>
				</thead>
				<tbody>
				<g:each in="${funcionarioInstanceList}" status="i" var="funcionarioInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">

                        <td class="tdrest"><a href="#apag" class="btn btn-danger">
							<i class="trashi fa fa-trash" aria-hidden="true"></i>
						</a><div id="apag" class="modalDialog">
							<div>
								<a href="#close" title="Close" class="closed">X</a>
								<h2>Apagar</h2>
								<p>Tem certeza de que deseja apagar este funcionário?</p>

								<g:form url="[resource:funcionarioInstance, action:'delete']">
									<g:submitButton class="butap btn btn-danger" name="deletar"/>
								</g:form>
								<a href="#cancelar" title="Cancelar" class="butap2 btn btn-info">Cancelar</a>
							</div>
						</div> <g:link class="cols" action="edit" id="${funcionarioInstance.id}">${fieldValue(bean: funcionarioInstance, field: "cpf")}</g:link></td>

						<td>${fieldValue(bean: funcionarioInstance, field: "nome")}</td>

						<td>${fieldValue(bean: funcionarioInstance, field: "idade")}</td>

						<td>${fieldValue(bean: funcionarioInstance, field: "sexo")}</td>

						<td>${fieldValue(bean: funcionarioInstance, field: "pis")}</td>
					
						<td>${fieldValue(bean: funcionarioInstance, field: "telefone")}</td>
					
						<td>${fieldValue(bean: funcionarioInstance, field: "endereco")}</td>

						<td>${fieldValue(bean: funcionarioInstance, field: "empresa")}</td>

					</tr>
				</g:each>
				</tbody>
			</table>
				</div>

			<div class="pagination">
				<g:paginate total="${funcionarioInstanceCount ?: 0}" />
			</div>
		</div>
	</body>
</html>
