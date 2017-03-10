<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: andrei
  Date: 18.04.2016
  Time: 16:15
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html lang="ro">
<meta charset="UTF-8">
<meta name="description" content="Serviciu pentru Programarea la medic">
<meta name="keywords" content="Dinti, programare, dental, stomatologie ">
<meta name="viewport" content="width=device-width, initial-scale=1">

<head>
    <%@include file="/WEB-INF/views/template/headering.jsp" %>
    <%@include file="/WEB-INF/views/template/js-libs.jsp" %>
    <title>In curs de dezvoltare</title>
</head>
<body>
<header>
    <div class="container-fluid">
        <%@include file="/WEB-INF/views/template/nav.jsp" %>
    </div>
</header>
<div class="wr-register clearfix">
    <c:if test="${not empty msg}">
        <div class="msg"></div>
    </c:if>
    <form name="loginForm" class="form-register" action="<c:url value="/j_spring_security_check"/>" method="post">
        <c:if test="${not empty error}">
            <div class="error" style="collor: #ff0766">${error}</div>
        </c:if>
        <div class="form-group">
            <label for="user">Nume Utilizator:</label>
            <input type="text" name="username" class="form-control input-register" id="user">
        </div>
        <div class="form-group">
            <label for="pwd">Parola de autentificare:</label>
            <input type="password" name="password" class="form-control input-register" id="pwd">
        </div>
        <div class="form-group">
            <input type="submit" value="Submit" class="btn btn-register">
            <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>
        </div>
    </form>
</div>
<%@include file="/WEB-INF/views/template/footer.jsp" %>


</body>
</html>