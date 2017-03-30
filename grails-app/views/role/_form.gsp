<%@ page import="ponto.Role" %>



<div class="fieldcontain ${hasErrors(bean: roleInstance, field: 'authority', 'error')} required">
	<label for="authority" class="labeli">
		<g:message code="role.authority.label" default="Autoridade" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField class="inpt" name="authority" required="" value="${roleInstance?.authority}"/>

</div>