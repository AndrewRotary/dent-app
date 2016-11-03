<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: andrei
  Date: 25.04.2016
  Time: 19:19
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <%@include file="/WEB-INF/views/template/headering.jsp"%>
    <title>Register Doctor</title>
</head>



<body>
<%@include file="/WEB-INF/views/template/nav.jsp"%>
<div class="container-wrapper">
    <div class="container">
        <div class="page-header">
            <h1>Register Doctor</h1>


        </div>

        <form:form action="${pageContext.request.contextPath}/registerD" method="post"
                   commandName="doctor" enctype="multipart/form-data">

            <h3>Basic Info</h3>

            <div class="form-group">
                <label for="name">Name</label><form:errors path="doctorName" cssStyle="color: #ff0000"/>
                <form:input path="doctorName" id="name" class="form-Control"/>
            </div>

            <div class="form-group">
                <label for="doctorSurname">Surname</label>
                <form:input path="doctorSurname" id="doctorSurname" class="form-Control"/>
            </div>

            <div class="form-group">
                <label for="doctorDegree">Degree</label>
                <form:input path="doctorDegree" id="doctorDegree" class="form-Control"/>
            </div>

            <div class="form-group">
                <label for="email">Email</label><span style="color: #ff0000">${emailMsgg}</span><form:errors
                    path="doctorEmail" cssStyle="color: #ff0000"/>
                <form:input path="doctorEmail" id="email" class="form-Control"/>
            </div>

            <div class="form-group">
                <label for="phone">Phone</label>
                <form:input path="doctorPhone" id="phone" class="form-Control"/>
            </div>

            <div class="form-group">
                <label for="skayp">Skayp</label>
                <form:input path="doctorSkayp" id="skayp" class="form-Control"/>
            </div>

            <div class="form-group">
                <label for="username">Username</label>
                <form:input path="users.username" id="username" class="form-Control"/>
            </div>
            <div class="form-group">
                <label for="password">Password</label>
                <form:input path="users.password" id="password" type="password" class="form-Control"/>
            </div>
            <div class="form-group">
                <label class="control-label" for="doctorImage">Incarca Imaginea</label>
                <form:input id="doctorImage" path="doctorImage" type="file" class="" />
            </div>
            <br><br>
            <input type="submit" value="submit" class="btn btn-default">
            <a href="<c:url value="/" />" class="btn btn-default">Cancel</a>
        </form:form>
    </div>
</div>

</body>
</html>
