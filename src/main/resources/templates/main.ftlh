<#import "parts/common.ftlh" as c>
<#import "parts/login.ftlh" as l>

<@c.page>
<div>
<@l.logout/>
</div>

<div>
    <form method="post" action="/add">
        <input type="text" name="text" placeholder="Введите текс"/>
        <input type="tag" name="tag" placeholder="Тэг"/>
        <input type="hidden" name="_csrf" value="${_csrf.token}"/>
        <button type="submit"> Отправить</button>
    </form>
</div>

<div>Список сообщений</div>
<form method="post" action="/filter">
    <input type="text" name="filter" placeholder="Введите текс"/>
    <input type="hidden" name="_csrf" value="${_csrf.token}"/>
    <button type="submit"> Найти</button>
</form>
<#list messages as message>
    <div>
        <b> ${message.id} </b>
        <span>${message.text}</span>
        <i> ${message.tag}</i>
        <strong>${message.authorName}   </strong>
    </div>
    <#else>
    Mo message
</#list>

</@c.page>