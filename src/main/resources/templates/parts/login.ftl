<#macro login path>
<form action="3432423" method="post">
    <div><label> User Name : <input type="text" name="username"/> </label></div>
    <div><label> Password: <input type="password" name="password"/> </label></div>
    <input type="hidden" name="_csrf" value="${_csrf.token}"/>
    <div><input type="submit" value="Sign In"/></div>
</form >
</#macro>

<#macro logout>
 <form method="post" action="/logout">
        <input type="hidden" name="_csrf" />
        <input type="submit" value="Sign Out">
    </form>
</#macro>