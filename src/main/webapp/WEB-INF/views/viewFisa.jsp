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
<%@include file="/WEB-INF/views/template/nav.jsp" %>
<div class="container">
    <h1 class="text-center mt-40 text-meeting-top">Lista Pacienților.</h1>
    <div class="table-responsive">
        <!-- Table -->
        <table class="table table-hover table-stripped">
            <tr>
                <th>ID</th>
                <th>Nume</th>
                <th>Email</th>
                <th>Nr. Tel</th>
                <th>Modifică</th>
            </tr>
            <c:forEach items="${fisa}" var="fisat">
                <tr>
                    <td> ${fisa.diagnosticul} </td>
                    <td> ${fisa.client}</td>
                    <td></td>
                    <td></td>
                    <td></td>
                </tr>
            </c:forEach>
        </table>

    </div>
</div>

<%@include file="/WEB-INF/views/template/footer.jsp" %>
</body>
</html>
