<%--
  Created by IntelliJ IDEA.
  User: andrei
  Date: 19.04.2016
  Time: 19:06
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<html>
<head>
    <title>Tests</title>
    <%@include file="/WEB-INF/views/template/headering.jsp"%>
</head>

<body>
<div class="container-fluid">
    <%@include file="/WEB-INF/views/template/nav.jsp"%>
</div>
<h1>Client Page</h1>
<c:if test="${pageContext.request.userPrincipal.name != null}">
    <h2>
        Welcome ${pageContext.request.userPrincipal.name} | <a href="<c:url
            value="/j_spring_security_logout"/> ">Logout</a>
    </h2>
</c:if>
<div class="container">
    <p>You can modify the calendar hire</p>
    <a href="<c:url value="/client/MeetingCalendar" />" > Meeting Calendar</a>
</div>



</body>
</html>
