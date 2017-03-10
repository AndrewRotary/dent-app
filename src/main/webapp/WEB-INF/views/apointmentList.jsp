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
    <%@include file="/WEB-INF/views/template/headering.jsp" %>
</head>
<body>
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
    <%@include file="/WEB-INF/views/template/headering.jsp" %>
</head>
<body>
<p>Hire you can change Apointment Table</p>
<div class="container">


    <h1>Apointment List</h1>
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
                <td> ${apointment.doctorImage}</td>
            </tr>
        </c:forEach>
    </table>

</div>
</body>
</html>
