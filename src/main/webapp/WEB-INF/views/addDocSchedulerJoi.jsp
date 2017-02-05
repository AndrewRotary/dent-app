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
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<!DOCTYPE html>
<html lang="ro">
<meta http-equiv="content-type" content="text/html; charset=UTF-8" />
<meta name="description" content="Serviciu pentru Programarea la medic">
<meta name="keywords" content="Dinti, programare, dental, stomatologie ">
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="author" content="Andrei Rotari">

<head>
    <%@include file="/WEB-INF/views/template/headering.jsp"%>
    <%@include file="/WEB-INF/views/template/js-libs.jsp"%>
    <title>In curs de dezvoltare</title>
</head>

<body>
<header class="container-fluid">
    <%@include file="/WEB-INF/views/template/nav.jsp"%>
</header>

<div class="inner-wr container">
    <form:form action="${pageContext.request.contextPath}/doctor/addDocScheduler" method="post" id="worckTime" commandName="worckTime">
        <form:hidden path="doctor.doctorId" name="doctor"  id="choose-time" value="${doctor.doctorId}"  ></form:hidden>
        <div class="">
            <div class="col-xs-3 form-group">
                <label for="choose-time">titlu</label>
                <form:input path="title" class="form-control" type="text"/>
            </div>
            <div class="col-xs-3 form-group">
                <label for="choose-time">week</label>
                <form:input path="week" class="form-control" type="number"/>
            </div>
            <div class="col-xs-3 form-group">
                <label for="choose-time">time start</label>
                <form:input path="start" class="form-control" value="10:10:00"  type="time"/>
            </div>
            <div class="col-xs-3 form-group">
                <label for="choose-time">time start</label>
                <form:input path="end" class="form-control" value="17:10:00"  type="time"/>
            </div>
        </div>
        <input type="submit" id="btn btn-info" value="Confirma" class="col-xs-3">
        <a href="<c:url value="/"/> "><i class="fa fa-times-circle" aria-hidden="true"></i> Inapoi</a>
    </form:form>
</div>
<div class="mt-10"></div>
<%@include file="/WEB-INF/views/template/footer.jsp"%>
<script>


</script>

</body>
</html>

