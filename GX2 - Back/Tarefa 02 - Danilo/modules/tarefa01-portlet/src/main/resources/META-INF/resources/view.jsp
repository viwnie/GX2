<%@ include file="/init.jsp" %>

<p>
    <b><liferay-ui:message key="tarefa01.caption"/></b>
</p>

<ul>
    <c:forEach var="user" items="${userList}">
        <li>${user.fullName}</li>
    </c:forEach>
</ul>