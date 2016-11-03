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
    <%@include file="/WEB-INF/views/template/headering.jsp"%>
</head>
<body>
<div class="container-fluid">
    <%@include file="/WEB-INF/views/template/nav.jsp"%>
</div>
    <p>Hire you can change Apointment Table</p>
    <div class="container">
        <h1>feel the below information to add Apointment</h1>

        <form:form action="${pageContext.request.contextPath}/admin/ApointmentCalendar/addApointment" method="post" commandName="apointment">


            <div class="form-group col-xs-3">
                 <label for="UserID">UserId</label>
                 <form:input path="UserId" id="UserID"  />
             </div>

             <div class="form-group col-xs-3">
                 <label for="choose-doctor">Choose Doctor</label>
                 <label class="form-group"><form:radiobutton path="DoctorId" id="choose-doctor" value="1"/> 1 </label>
                 <label class="form-group"><form:radiobutton path="DoctorId" id="choose-doctor" value="2"/> 2 </label>
                 <label class="form-group"><form:radiobutton path="DoctorId" id="choose-doctor" value="3"/> 3 </label>
             </div>
             <div class="form-group col-xs-3">
                 <label for="choose-time">Choose datetime</label>
                    <form:input path="ApointmentDate" id="choose-time" type="date" />
             </div>
             <input type="submit" value="submit" class="col-xs-3">
             <a href="<c:url value="/admin/ApointmentCalendar"/> ">Cancell</a>
         </form:form>

</div>