<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jstl/fmt" %>
<%--
  Created by IntelliJ IDEA.
  User: andrei
  Date: 19.04.2016
  Time: 18:44
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<div class="add-meeting-container">
<form:form action="${pageContext.request.contextPath}/client/MeetingCalendar/addMeeting" method="post" id="meeting" commandName="meeting">
            <form:hidden path="client.clientId" name="client"  id="choose-time" value="${client.clientId}"  ></form:hidden>
    <div class="add-form-hide">
        <div class="form-group col-xs-3">
            <label for="choose-time">Choose datetime</label>
            <form:input path="DateTime" id="date-time-add" class="inputDate" />
        </div>
        <div class="col-xs-3">
            <label for="choose-time">Choose datetime</label>
            <form:input path="hourTime" id="hourTime" name="hourTime" value="17:10:00"  type="text"/>
        </div>
        <div class="col-xs-3">
            <p>Select Doctor</p>

            <div class="col-xs-4 select-doctor">
                <select id="selectDoc" name="doctorId">
                    <c:forEach items="${doctors}" var="doctor">
                    <option value="${doctor.doctorId}">  ${doctor.doctorSurname}</option>
                    </c:forEach>
                </select>
            </div>
        </div>
    </div>
    <input type="submit" id="btnAddMeeting" value="Confirma" class="col-xs-3">
    <a href="<c:url value="/"/> "><i class="fa fa-times-circle" aria-hidden="true"></i> Inapoi</a>

</form:form>
</div>

<script>
    $( document ).ready(function() {
        var DocId = $('#choosedDoc').data('info');
        $("#selectDoc").val(DocId);
        var DateTime = $('#choosedDate').data('info');
        $('#date-time-add').val(DateTime);
        $("#SetModalHour").on("click", function(){
            $("#btnAddMeeting").addClass("display-block");
            console.log('hello')
        });
    });
</script>
