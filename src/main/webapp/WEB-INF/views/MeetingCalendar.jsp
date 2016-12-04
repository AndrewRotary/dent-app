<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: andrei
  Date: 19.04.2016
  Time: 18:44
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Apointments</title>
    <%@include file="/WEB-INF/views/template/headering.jsp"%>
</head>
<body>
<div class="container-fluid">
    <%@include file="/WEB-INF/views/template/nav.jsp"%>
</div>

<div class="container">
    <div class="margin-auto">
    <h1 class="text-center mt-40">Aici poți anula și viziona istoria programărilor.</h1>
    <!-- Table -->
    <table class="table-striped">
        <tr>
            <th>ID</th>
            <th>Medic</th>
            <th>Data</th>
            <th>Ora</th>
            <th>Funcții</th>
        </tr>
        <c:forEach items="${meetings}" var="meeting">
            <tr>
                <td> ${meeting.meetingId}</td>
                <td> ${meeting.doctor.doctorName} </td>
                <td> ${meeting.dateTime}</td>
                <td> ${meeting.hourTime}</td>
                <td> <a href="<spring:url value="/client/MeetingCalendar/deleteMeeting/${meeting.meetingId}"/> "> Anulează programarea <i class="fa fa-trash" aria-hidden="true"></i></a></td>
            </tr>
        </c:forEach>
    </table>
</div>
</div>
<a href="<spring:url value="/calendar"/>"> Adaugă programare</a>

</body>
</html>
