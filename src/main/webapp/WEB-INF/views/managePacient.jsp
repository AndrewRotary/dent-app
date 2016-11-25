<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>

<%@ page contentType="text/html;charset=UTF-8" language="java" %>





<table class="table-doctor-meetings">

    <tr>
        <td>Nume</td>
        <td>Ora</td>
        <td>nr Tel</td>
        <td>Edit</td>
    </tr>
        <c:forEach items="${SortedMitings}" var="meeting">
                   <tr>
                   <td>
                       <c:out value="${meeting.client.clientName}"></c:out>
                   </td>
                   <td>
                       <c:out value="${meeting.hourTime}"></c:out>
                   </td>
                   <td>
                       <c:out value="${meeting.client.clientPhone}"></c:out>
                   </td>
                   <td>
                       <div class="wr-functions-pacients">
                               <a class="btn-for-pacient" href=""><i class="fa fa-info-circle" aria-hidden="true"></i></a>
                               <a class="btn-for-pacient" href="<spring:url value="/client/MeetingCalendar/deleteMeeting/${meeting.meetingId}"/> "><i class="fa fa-trash" aria-hidden="true"></i></a>
                           <a href="client/MeetingCalendar/editMeeting/${meeting.meetingId}" class="btn-for-pacient"><i class="fa fa-pencil" aria-hidden="true"></i></a>

                       </div>
                   </td>
                   </tr>
        </c:forEach>
</table>

<script>
    $( document ).ready(function() {
    $(".btn-edti-meeting").on("hover", function(){
        $(this).closest('div').find(".wr-ovverlay").addClass("left-0");

        $(this).parent().addClass("overflow-visible");
    });
    });


</script>