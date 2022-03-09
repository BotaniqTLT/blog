<#import "parts/common.ftlh" as c>
<#import "parts/login.ftlh" as l>

<@c.page>
ADD new User
${message}

 <@l.login "/registration"/>
</@c.page>