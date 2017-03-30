<%@ page import="ponto.Empresa" %>


<div class="org">
    <header class="headcadcreate">
        <h1><i class="fa fa-building-o" aria-hidden="true"></i> Cadastro Empresa</h1>
    </header>
    <div class=" ${hasErrors(bean: empresaInstance, field: 'nome', 'error')} required">
        <label for="nome" class="labelsn">
            <g:message code="empresa.nome.label" default="NOME" />
            <span class="required-indicator">*</span>
        </label>
        <g:textField class="inptt" name="nome" required="" value="${empresaInstance?.nome}"/>

    </div>

    <div class=" ${hasErrors(bean: empresaInstance, field: 'cnpj', 'error')} required">
        <label for="cnpj" class="labelsc">
            <g:message code="empresa.cnpj.label" default="CNPJ" />
            <span class="required-indicator">*</span>
        </label>
        <g:textField class="inptt" name="cnpj" required="" value="${empresaInstance?.cnpj}"/>

    </div>

    <div class=" ${hasErrors(bean: empresaInstance, field: 'telefone', 'error')} required">
        <label for="telefone" class="labels">
            <g:message code="empresa.telefone.label" default="TELEFONE" />
            <span class="required-indicator">*</span>
        </label>
        <g:textField class="inptt" name="telefone" required="" value="${empresaInstance?.telefone}"/>

    </div>
    <div class=" ${hasErrors(bean: empresaInstance, field: 'quantidadeFuncionario', 'error')} required">
        <label for="quantidadeFuncionario" class="labelsf">
            <g:message code="empresa.quantidadeFuncionario.label" default="FUNCIONÁRIOS" />
            <span class="required-indicator">*</span>
        </label>
        <g:textField class="inptt" name="quantidadeFuncionario" type="number" value="${empresaInstance.quantidadeFuncionario}"/>

    </div>
    <div class=" ${hasErrors(bean: empresaInstance, field: 'endereco', 'error')} required">
        <label for="endereco" class="labels">
            <g:message code="empresa.endereco.label" default="ENDEREÇO" />
            <span class="required-indicator">*</span>
        </label>
        <div class="iner">
            <g:textArea class="areacreate" name="endereco" required="" value="${empresaInstance?.endereco}"/>
        </div>
    </div>
</div>
