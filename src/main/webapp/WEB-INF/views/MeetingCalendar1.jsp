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
<script>
    var torr = 1;

</script>
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
        <c:forEach items="${SortedMitings}" var="meeting">
            <tr>
                <c:choose>
                    <c:when test="${meeting.doctor.doctorId == '1'}">
                        <c:choose>
                            <c:when test="${meeting.dateTime =='1970-01-01'}">
                                <td> ${meeting.doctor.doctorName} </td>
                                <td> ${meeting.dateTime}</td>
                                <td> ${meeting.client.clientName}</td>
                                <td> ${doc.doctorId}</td>
                            </c:when>
                            <c:otherwise>
                            </c:otherwise>
                        </c:choose>
                    </c:when>
                    <c:otherwise>
                    </c:otherwise>
                </c:choose>
            </tr>

        </c:forEach>

    </table>

</div>
<a href="<spring:url value="/client/MeetingCalendar/addMeeting"/>"> Add Apointment</a>
</body>
</html>
