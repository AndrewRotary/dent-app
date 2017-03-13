<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<!DOCTYPE html>
<html lang="ro">
<meta http-equiv="content-type" content="text/html; charset=UTF-8"/>
<meta name="description" content="Serviciu pentru Programarea la medic">
<meta name="keywords" content="Dinti, programare, dental, stomatologie ">
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="author" content="Andrei Rotari">

<head>
    <%@include file="/WEB-INF/views/template/headering.jsp" %>
    <%@include file="/WEB-INF/views/template/js-libs.jsp" %>
    <title>In curs de dezvoltare</title>
</head>
<body>
<header class="container-fluid">
    <%@include file="/WEB-INF/views/template/nav.jsp" %>
</header>
<div class="inner-wr container">
    <form:form action="${pageContext.request.contextPath}/doctor/editDoctor" method="post" id="editDoc"
               commandName="doctor" enctype="multipart/form-data">
        <form:hidden class="form-control" value="${doctor.doctorId}" path="doctorId"/>
        <div class="form-group">
            <label>Nume</label>
            <form:input class="form-control" value="${doctor.doctorName}" type="text" path="doctorName"/>
        </div>
        <div class="form-group">
            <label>Prenume</label>
            <form:input class="form-control" value="${doctor.doctorSurname}" type="text" path="doctorSurname"/>
        </div>
        <div class="form-group">
            <label>Email</label>
            <form:input class="form-control" type="text" value="${doctor.doctorEmail}"
                           path="doctorEmail"/>
        </div>
        <div class="form-group">
            <label>Telefon</label>
            <form:input class="form-control" type="text" value="${doctor.doctorPhone}"
                           path="doctorPhone"/>
        </div>
        <div class="form-group">
            <label>Descrierea</label>
            <form:textarea class="form-control" type="text" value="${doctor.about}"
                        path="about"/>
        </div>
        <div class="form-group">
            <div>
                <img width="250" height="250" src="<c:url value="/resources/images/${doctor.doctorId}.png" />" alt="">
            </div>
            <label class="control-label" for="doctorImage">Incarca Imaginea</label>
            <form:input id="doctorImage" path="doctorImage" type="file" class="" lang="ro"/>
        </div>
        <button type="submit" class="btn btn-default">Salveaza</button>
    </form:form>
</div>
<%@include file="/WEB-INF/views/template/footer.jsp" %>
</body>
</html>
