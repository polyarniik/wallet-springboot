<#include '../partials/base.ftlh'>
<#import '../partials/header.ftlh' as header/>

<#macro content>
    <body>
    <div class="wrapper">
        <@header.header/>
        <div class="record-add-container">
            <@spring.bind 'form'/>
            <form method="post" action="<@spring.url '/addBank'/>" id="add-record-form">
                <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}">
                <div class="form-row">
                    <div class="form-group col-md-2">
                        <input type="text" name="name" required placeholder="Название банка" maxlength="100">
                        <input class="record-input  form-control" id="record-input" name="amount" type=number
                               placeholder="Введите баланс"
                               min="0"
                               max="1000000000"
                               step="0.01"
                               pattern="([0-9]+\.?[0-9]{1,2})"
                               required>
                    </div>
                </div>
                <div class="form-row">
                    <div class="col-md-4">
                        <button type="submit" class="add-record btn">Добавить</button>
                    </div>
                </div>
            </form>
        </div>
    </div>
    </body>
</#macro>
<@page/>