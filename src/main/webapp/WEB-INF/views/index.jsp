<%@page contentType="text/html" pageEncoding="UTF-8"%>

<div id="pageContent">

<a href="${pageContext.request.contextPath}/messages/viewAll.htm"> Display message from db (standard URLs)</a> <br/>
<br/>
<a href="${pageContext.request.contextPath}/rest/messages/"> Display message from db (RESTful, requires authentication)</a><br />
<br/>
<a href="${pageContext.request.contextPath}/admin/viewAllMessageTypes.htm"> Manage Message Types (requires authentication and ADMIN role)</a> <br />
<br />
<a href="${pageContext.request.contextPath}/admin/rest/messageTypes/"> Manage Message Types (RESTful, requires authentication and ADMIN role)</a>
</div>


