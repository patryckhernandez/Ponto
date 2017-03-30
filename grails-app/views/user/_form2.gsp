<%@ page import="ponto.User" %>


<div class="orgform2">
    <header class="headcaduser">
        <h1><i class="fa fa-building-o" aria-hidden="true"></i> Editar Usuário</h1>
    </header>
            <p class="mens">* Digite novo usuário e senha.</p>
    <div class="fieldcontain ${hasErrors(bean: userInstance, field: 'username', 'error')} required">
        <label for="username" class="labels">
            <g:message code="user.username.label" default="Username" />
            <span class="required-indicator">*</span>
        </label>
        <g:textField class="inpttedit" name="username" required="" value="${userInstance?.username}"/>

    </div>

    <div class="fieldcontain ${hasErrors(bean: userInstance, field: 'password', 'error')} required">
        <label for="password" class="labels">
            <g:message code="user.password.label" default="Password" />
            <span class="required-indicator">*</span>
        </label>
        <g:textField class="inpttedit" name="password" required="" value="${userInstance?.password}"/>

    </div>
</div>
</div>
