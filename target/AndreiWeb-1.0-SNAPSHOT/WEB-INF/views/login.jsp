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

<html>
<head>
    <title>Login page</title>
    <%@include file="/WEB-INF/views/template/headering.jsp"%>
</head>

<body>
<header>
    <div class="container-fluid">
<%@include file="/WEB-INF/views/template/nav.jsp"%>
      </div>
    </header>
<div class="container center-text">
    <h2>Login with username and password</h2>

    <c:if test="${not empty msg}">
        <div class="msg"></div>
    </c:if>


    <form name="loginForm" action="<c:url value="/j_spring_security_check"/>" method="post" >
          <c:if test="${not empty error}">
              <div class="error" style="collor: #ff0766">${error}</div>
          </c:if>
          <div class="col-xs-3">
              <p>User:</p>
              <input type="text" name="username" class="form-control">
          </div>
        <div class="col-xs-3">
            <p>Password:</p>
            <input type="password" name="password" class="form-control">
        </div>
        <div class="col-xs-3">

            <input type="submit" value="Submit" class="btn-default">

            <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>
        </div>
    </form>
</div>

</body>
</html>