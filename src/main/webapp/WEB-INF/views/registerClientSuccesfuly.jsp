<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%--
  Created by IntelliJ IDEA.
  User: andrei
  Date: 24.04.2016
  Time: 19:42
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <%@include file="/WEB-INF/views/template/headering.jsp"%>
    <title>Title</title>
</head>
<body>
<%@include file="/WEB-INF/views/template/nav.jsp"%>
<div class="container-wrapper">
    <div class="container">
        <div class="page-header">
            <h1>Succesfuly Registered</h1>
            <section class="container">
                <p>
                    <a href="<spring:url value="/" />" class="btn btn-default">Products</a>
                </p>
            </section>
            </div>
        </div>
    </div>

</body>
</html>
