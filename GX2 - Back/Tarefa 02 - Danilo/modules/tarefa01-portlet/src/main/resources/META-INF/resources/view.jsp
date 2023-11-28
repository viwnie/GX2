<%@ include file="/init.jsp" %>

<h1>Lista de usuarios:</h1>
<ul>
    <c:forEach var="user" items="${userList}">
        <li>Nome completo : ${user.fullName}</li>
        <li>Email : ${user.emailAddress}</li>
        <br>
    </c:forEach>
</ul>