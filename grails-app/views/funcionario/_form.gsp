<%@ page import="ponto.Funcionario" %>


<div class="org">
	<header class="headcad">
		<h1><i class="fa fa-users" aria-hidden="true"></i> Novo Funcionário</h1>
	</header>

	<div class="fieldcontain ${hasErrors(bean: funcionarioInstance, field: 'nome', 'error')} required">
	<label for="nome" class="labels" >
		<g:message code="funcionario.nome.label" default="NOME" />
		<span class="required-indicator">*</span>
	</label>
	<div class="in">
		<g:textField class="inptNome" name="nome" required="" value="${funcionarioInstance?.nome}"/>
	</div>
</div>

	<div class="fieldcontain ${hasErrors(bean: funcionarioInstance, field: 'cpf', 'error')} required">
		<label for="cpf" class="labels">
			<g:message code="funcionario.cpf.label" default="CPF" />
			<span class="required-indicator">*</span>
		</label>
		<div class="in">
			<g:textField class="inpttcpf" name="cpf" required="" value="${funcionarioInstance?.cpf}"/>
		</div>
	</div>
	<div class="telefone" ${hasErrors(bean: funcionarioInstance, field: 'telefone', 'error')} required">
	<label for="telefone" class="labelsTel">
		<g:message code="funcionario.telefone.label" default="TELEFONE" />
		<span class="required-indicator">*</span>
	</label>
    <div class="intel">
	<g:textField class="inpTel" name="telefone" required="" value="${funcionarioInstance?.telefone}"/>
</div>
</div>

<div class="fieldcontain ${hasErrors(bean: funcionarioInstance, field: 'idade', 'error')} required">
	<label for="idade" class="labels">
		<g:message code="funcionario.idade.label" default="NASCIMENTO" />
		<span class="required-indicator">*</span>
	</label>
	<div class="ind">

		<g:datePicker class="date" name="idade" precision="day" value="${funcionarioInstance?.idade}"/>
    </div>
</div>

<div class="telefone" ${hasErrors(bean: funcionarioInstance, field: 'sexo', 'error')} required">
	<label for="sexo" class="labelsTel">
		<g:message code="funcionario.sexo.label" default="SEXO" />
		<span class="required-indicator">*</span>
	</label>
	<div class="intelsec">
		<select class="select" name="sexo" id="sexo">
			<option value="masculino">Masculino</option>
			<option value="feminino">Feminino</option>
		</select>
	</div>
</div>
<div class="fieldcontain ${hasErrors(bean: funcionarioInstance, field: 'pis', 'error')} required">
	<label for="pis" class="labels">
		<g:message code="funcionario.pis.label" default="PIS" />
		<span class="required-indicator">*</span>
	</label>
	<div class="in">
		<g:textField class="inpttcpf" name="pis" required="" value="${funcionarioInstance?.pis}"/>
	</div>
</div>

<div class="fieldcontain ${hasErrors(bean: funcionarioInstance, field: 'endereco', 'error')} required">
	<label for="endereco" class="labels">
		<g:message code="funcionario.endereco.label" default="ENDEREÇO" />
		<span class="required-indicator">*</span>
	</label>
    <div class="in">
	<g:textArea class="textarea" name="endereco" required="" value="${funcionarioInstance?.endereco}"/>
</div>
</div>
</div>