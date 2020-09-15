<%--this is a page directive that will apply to the entire page--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%! int counter = 0; %>
<% counter += 1; %>
<html>
<head>
    <jsp:include page="partials/head.jsp">
        <jsp:param name="title" value="Burgers 'R Us"></jsp:param>
    </jsp:include>
</head>
<body>
<div class="container">
    <h1>Welcome to Burgers 'R Us!</h1>
    <p>Currently <%= counter %> million burgers sold</p>
    <p>Path: <%= request.getRequestURL() %></p>
    <p><strong>Query String:</strong> <%= request.getQueryString() %></p>
    <p><strong>"burgers" parameter:</strong> <%= request.getParameter("burgers")%></p>
    <p><strong>User-Agent header:</strong> <%= request.getHeader("user-agent")%></p>
    <p><strong>IP address</strong><%= request.getRemoteAddr()%></p>
    <p><strong>Response Status:</strong><%= response.getStatus()%></p>
    <p><strong>All of the param values:</strong>${paramValues}</p>
    <p><strong>Size of the session scope:</strong>${sessionScope.size()}</p>
    <h2>Here is our menu!</h2>
    <c:choose>
        <c:when test="${truthiness}">
            <c:forEach items="${allBurgers}" var="burger">
                <li><strong>${burger.burgerName}</strong></li>
            </c:forEach>
        </c:when>
        <c:otherwise>
            <p>We currently don't have any food.</p>
        </c:otherwise>
    </c:choose>
    <ul>
        <c:forEach items="${allBurgers}" var="burger">
            <li><strong>${burger.burgerName}</strong></li>
        </c:forEach>
    </ul>
</div>
<jsp:include page="partials/Scripts.jsp"/>
</body>
</html>
