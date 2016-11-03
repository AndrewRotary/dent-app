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
                <th>ID</th>
                <th>Date</th>
                <th>Doctor</th>
                <th>User</th>

            </tr>
            <c:forEach items="${apointments}" var="apointment">
                <tr>
                    <td> ${apointment.id}</td>
                    <td> ${apointment.apointmentDate}</td>
                    <td> ${apointment.doctorId}</td>
                    <td> ${apointment.userId}</td>
                    <td> <a href="<spring:url value="/admin/ApointmentCalendar/deleteApointment/${apointment.id}"/> ">Delete <i class="fa fa-trash" aria-hidden="true"></i></a></td>
                    <td> <a href="<spring:url value="/admin/ApointmentCalendar/editApointment/${apointment.id}"/> "> <i class="fa fa-pencil" aria-hidden="true"></i></a></td>

                </tr>
            </c:forEach>
        </table>


</div>
<a href="<spring:url value="/admin/ApointmentCalendar/addApointment"/>"> Add Apointment</a>
</body>

</html>
