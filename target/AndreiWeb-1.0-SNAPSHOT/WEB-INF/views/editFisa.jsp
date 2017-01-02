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
    <h1 class="text-center mt-40 text-meeting-top">Modificare fișă medicală.</h1>
    <h1>Fișa medicală a pacientului ${fisa.client.clientName}</h1>
    <form:form action="${pageContext.request.contextPath}/editFisa" method="post" id="fisa" commandName="fisa">
        <form:hidden path="fisaId" value="${fisa.fisaId}"/>

        <div class="form-group">
            <label>Diagnosticul</label>
            <form:input path="diagnosticul" value="${fisa.diagnosticul}"  class="form-control"/>
        </div>
        <div class="form-group">
            <label>Acuze</label>
            <form:input path="acuze" value="${fisa.acuze}" class="form-control"/>
        </div>
        <div class="form-group">
            <label>Boli antecedente și concomitente</label>
            <form:input path="boli" value="${fisa.boli}"  class="form-control"/>
        </div>
        <div class="form-group">
            <label>Evoluția bolii actuale</label>
            <form:input path="evolutiaBolii" value="${fisa.evolutiaBolii}" class="form-control"/>
        </div>
        <div class="form-group">
            <label>Ocluzia</label>
            <form:input path="ocluzia" value="${fisa.ocluzia}"  class="form-control"/>
        </div>
        <div class="form-group">
            <label>Starea mucoaseo, gingiilor, apofizelor alveolare și palatului dur</label>
            <form:input path="stareaMucoaseiEtc" value="${fisa.stareaMucoaseiEtc}" class="form-control"/>
        </div>
        <div class="form-group">

            <%--<label>Dinte 1</label>--%>
            <%--<form:input path="dintii.ul1" value="${fisa.dintii.ul1}" class="form-control"/>--%>
        <%--</div>--%>
        <%--<div class="form-group">--%>
            <%--<label>Dinte 2</label>--%>
            <%--<form:input path="dintii.ul2" value="${fisa.dintii.ul2}" class="form-control"/>--%>
        </div>

        <button type="submit" class="btn btn-default">Submit</button>


    </form:form>

</div>
<%@include file="/WEB-INF/views/template/footer.jsp"%>
</body>
</html>
