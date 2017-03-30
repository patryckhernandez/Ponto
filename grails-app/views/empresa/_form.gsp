<%@ page import="ponto.Empresa" %>


<div class="org">
	<header class="headcad">
	<h1><i class="fa fa-building-o" aria-hidden="true"></i> Minha Empresa</h1>
</header>
	<div class="edited ${hasErrors(bean: empresaInstance, field: 'nome', 'error')} required">
		<label for="nome" class="editLabeln">
			<g:message code="empresa.nome.label" default="NOME" />
			<span class="required-indicator">*</span>
		</label>
		<g:textField class="editNome" name="nome" required="" value="${empresaInstance?.nome}"/>

	</div>

	<div class="editcnpj ${hasErrors(bean: empresaInstance, field: 'cnpj', 'error')} required">
		<label for="cnpj" class="labels">
			<g:message code="empresa.cnpj.label" default="CNPJ" />
			<span class="required-indicator">*</span>
		</label>
		<g:textField class="editc" name="cnpj" required="" value="${empresaInstance?.cnpj}"/>

	</div>

	<div class="editel ${hasErrors(bean: empresaInstance, field: 'telefone', 'error')} required">
		<label for="telefone" class="editLabelt">
			<g:message code="empresa.telefone.label" default="TELEFONE" />
			<span class="required-indicator">*</span>
		</label>
		<g:textField class="editNome" name="telefone" required="" value="${empresaInstance?.telefone}"/>

	</div>
	<div class="editcnpj ${hasErrors(bean: empresaInstance, field: 'quantidadeFuncionario', 'error')} required">
		<label for="quantidadeFuncionario" class="labels">
			<g:message code="empresa.quantidadeFuncionario.label" default="FUNCIONÁRIOS" />
			<span class="required-indicator">*</span>
		</label>
		<g:textField class="editf" name="quantidadeFuncionario" type="number" value="${empresaInstance.quantidadeFuncionario}"/>

	</div>
	<div class=" ${hasErrors(bean: empresaInstance, field: 'endereco', 'error')} required">
		<label for="endereco" class="labels">
			<g:message code="empresa.endereco.label" default="ENDEREÇO" />
			<span class="required-indicator">*</span>
		</label>
		<div class="iner">
		<g:textArea class="editarea" name="endereco" required="" value="${empresaInstance?.endereco}"/>
	</div>
	</div>
</div>
