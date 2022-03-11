<#import "parts/common.ftl" as c>
<#import "parts/login.ftl" as l>

<@c.page>
<div>
<@l.logout/>
<span><a href="/user">user list</a></span>
</div>

<div>
    <form method="post"  action="/add" enctype="multipart/form-data">
        <input type="text" name="text" placeholder="Введите текс"/>
        <input type="tag" name="tag" placeholder="Тэг"/>
        <input type="file"  name="file">
        <input type="hidden" name="_csrf" value="${_csrf.token}"/>
        <button type="submit"> Отправить</button>
    </form>
</div>

<div>Список сообщений</div>
<form method="get" action="/main">
    <input type="text" name="filter" value="${filter?ifExists}" placeholder="Введите текс"/>
    <button type="submit"> Найти</button>
</form>
<#list messages as message>
    <div>
        <b> ${message.id} </b>
        <span>${message.text}</span>
        <i> ${message.tag}</i>
        <strong>${message.authorName}   </strong>
            <div>
                <#if message.fileName??>
                    <img src="/img/${message.fileName}">
                </#if>
            </div>
    </div>
    <#else>
    Mo message
</#list>

</@c.page>