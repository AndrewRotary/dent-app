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
<header>
    <div class="container-fluid">
        <%@include file="/WEB-INF/views/template/nav.jsp"%>
    </div>
</header>
<div class="wr-register clearfix">
        <form:form action="${pageContext.request.contextPath}/registerD" method="post"
                   commandName="doctor" enctype="multipart/form-data" class="form-register">
            <h3>Inregistrare Medic</h3>
            <div class="form-group mt-30">
                <form:errors path="doctorName" cssStyle="color: #ff0000"/>
                <form:input path="doctorName" id="name" class="form-Control input-register" placeholder="Nume"/>
            </div>

            <div class="form-group">
                <form:input path="doctorSurname" id="doctorSurname" class="form-Control input-register" placeholder="Prenume"/>
            </div>

            <div class="form-group">
                <form:input path="doctorDegree" id="doctorDegree" class="form-Control input-register" placeholder="Specialitatea" />
            </div>

            <div class="form-group">
                <span style="color: #ff0000">${emailMsgg}</span><form:errors
                    path="doctorEmail" cssStyle="color: #ff0000"/>
                <form:input path="doctorEmail" id="email" class="form-Control input-register" placeholder="Email"/>
            </div>

            <div class="form-group">
                <form:input path="doctorPhone" id="phone" class="form-Control input-register" placeholder="Telefon"/>
            </div>

            <div class="form-group">
                <form:input path="doctorSkayp" id="skayp" class="form-Control input-register" placeholder="skayp"/>
            </div>

            <div class="form-group">
                <form:input path="users.username" id="username" class="form-Control input-register" placeholder="Nume Utilizator"/>
            </div>
            <div class="form-group">
                <form:input path="users.password" id="password" type="password" class="form-Control input-register" placeholder="Parola"/>
            </div>
            <div class="form-group">
                <label class="control-label" for="doctorImage">Incarca Imaginea</label>
                <form:input id="doctorImage" path="doctorImage" type="file" class="" lang="ro" />
            </div>
            <br><br>
            <input type="submit" value="submit" class="btn-register">
            <a href="<c:url value="/" />" class="btn-cancel">Cancel</a>
        </form:form>

</div>
</body>
</html>

