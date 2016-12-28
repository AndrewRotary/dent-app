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
<%@include file="/WEB-INF/views/template/nav.jsp"%>
<div class="container">
    <h1 class="text-center mt-40 text-meeting-top">Creare fișă medicală.</h1>
    <h1>Fișa medicală a pacientului ${fisa.client.clientName}</h1>
    <form:form action="${pageContext.request.contextPath}/addFisa" method="post" id="fisa" commandName="fisa">
        <form:input path="client.clientId"  class="form-control" value="${fisa.client.clientId}"/>
        <div class="form-group">
            <label>Diagnosticul</label>
        <form:input path="diagnosticul"  class="form-control"/>
        </div>
        <div class="form-group">
            <label>acuze</label>
        <form:input path="acuze"  class="form-control"/>
        </div>

        <button type="submit" class="btn btn-default">Submit</button>


</form:form>

</div>
<%@include file="/WEB-INF/views/template/footer.jsp"%>
</body>
</html>
