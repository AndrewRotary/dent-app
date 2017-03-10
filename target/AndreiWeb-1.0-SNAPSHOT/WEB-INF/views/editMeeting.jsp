<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
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

<div class="container-fluid">
    <%@include file="/WEB-INF/views/template/nav.jsp" %>
</div>
<div class="container text-center">
    <h1>Edit the Apointment</h1>

    <form:form action="${pageContext.request.contextPath}/client/MeetingCalendar/editMeeting" method="post"
               commandName="meeting">

        <form:hidden path="meetingId" value="${meeting.meetingId}"/>


        <%--<select name="doctorId">--%>
        <%--<c:forEach items="${doctors}" var="doctor">--%>
        <%--<option value="${doctor.doctorId}">${doctor.doctorName}</option>--%>
        <%--</c:forEach>--%>
        <%--</select>--%>

        <div class="form-group col-xs-3">
            <label for="choose-time">Choose datetime</label>
            <form:input path="DateTime" id="choose-time" type="date" value="${meeting.dateTime}"/>
        </div>
        <div class="col-xs-3">
            <label for="choose-time">Choose datetime</label>
            <form:input path="hourTime" id="hourTime" name="hourTime" value="${meeting.hourTime}" type="text"/>
        </div>

        <input type="submit" value="submit" class="col-xs-3">
        <a href="<c:url value="/client/MeetingCalendar"/> ">Cancell</a>
    </form:form>

</div>
</body>