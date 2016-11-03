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
<p>Hire you can change Apointment Table</p>
<div class="container">


    <h1>Calendar</h1>
    <!-- Table -->
    <table class="table">

        <tr>
            <th>ID---------</th>
            <th>doctor-------</th>
            <th>dateTime--------</th>
            <th>time----------</th>
            <th>client---------</th>


        </tr>
        <c:forEach items="${meetings}" var="meeting">
            <tr>
                <td> ${meeting.meetingId}</td>
                <td> ${meeting.doctor.doctorName} </td>
                <td> ${meeting.dateTime}</td>
                <td> ${meeting.hourTime}</td>
                <td> ${meeting.client.clientName}</td>

                <td> <a href="<spring:url value="/client/MeetingCalendar/deleteMeeting/${meeting.meetingId}"/> ">Delete <i class="fa fa-trash" aria-hidden="true"></i></a></td>
                <%--<td> <a href="<spring:url value="/client/MeetingCalendar/editMeeting/${meeting.meetingId}"/> "> <i class="fa fa-pencil" aria-hidden="true"></i></a></td>--%>

            </tr>
        </c:forEach>
    </table>

</div>
<a href="<spring:url value="/client/MeetingCalendar/addMeeting"/>"> Add Apointment</a>

</body>
</html>
