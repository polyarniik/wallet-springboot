<#ftl encoding='UTF-8'/>
<#include '../partials/base.ftlh'>

<#macro content>
    <body class="sign">
    <div class="form-center">
        <div class="h2 mb-3 font-weight-normal text-center">Wallet</div>
        <@spring.bind "form"/>
        <form method="post" class="form-login">

            <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}">

            <h1 class="h4 mb-3 font-weight-normal text-center">Регистрация</h1>
            <input name="email" type="email" id="inputEmail" class="form-control first" placeholder="Email" required
                   autofocus>
            <input name="name" type="text" id="inputName" class="form-control" placeholder="Имя" required
                   autofocus>
            <input name="password1" type="password" id="inputPassword" class="form-control" placeholder="Пароль"
                   required>
            <input name="password2" type="password" id="inputPassword2" class="form-control last"
                   placeholder="Повтор пароля" required>
            <a href="<@spring.url 'signIn'/>">Войти!</a>
            <#if errorList?has_content>
                <#list errorList as error>
                    <div class="alert alert-danger" role="alert">
                        ${error.defaultMessage}
                    </div>
                </#list>
            </#if>
            <#if error?has_content>
                <div class="alert-danger alert" role="alert">
                    ${error}
                </div>
            </#if>
            <button class="btn btn-lg btn-primary btn-block" type="submit">Зарегистрироваться</button>
        </form>
    </div>
    </body>
</#macro>
<@page/>
