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
    <h1 class="text-center mt-40 text-meeting-top">Istoria programărilor.</h1>
    <div class="table-responsive">
    <!-- Table -->
    <table class="table table-hover table-stripped">
        <tr>
            <th>Medic</th>
            <th>Data</th>
            <th>Ora</th>
            <th>Modifică</th>
        </tr>
        <c:forEach items="${meetings}" var="meeting">
            <tr>
                <td> ${meeting.doctor.doctorName} </td>
                <td> ${meeting.dateTime}</td>
                <td> ${meeting.hourTime}</td>
                <td> <a href="<spring:url value="/client/MeetingCalendar/deleteMeeting/${meeting.meetingId}"/> " class="btn btn-danger"> Anulează programarea </a></td>
            </tr>
        </c:forEach>
    </table>
        <a href="<spring:url value="/calendar"/>" class="btn btn-warning"> Adaugă programare</a>
</div>
</div>
<%@include file="/WEB-INF/views/template/footer.jsp"%>

</body>
</html>
