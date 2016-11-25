<%@ page import="com.AndreiWeb.Calendar.Month,java.util.*,java.io.*,java.sql.*,com.AndreiWeb.*" errorPage="error.jsp" %>
<%-- TODO: CLEAN UP THE PAGE TAG ABOVE --%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ include file="calendarCommon.jsp" %>

<html>
<head>
    <title>Calendar</title>

    <%@include file="/WEB-INF/views/template/headering.jsp"%>

    <%@include file="/WEB-INF/views/template/footer.jsp"%>


</head>
<body>
<header class="container-fluid">
    <%@include file="/WEB-INF/views/template/nav.jsp"%>
</header>
<main class="container mt-10">
    <div id='calendar'></div>
    <button class="run-manager-pacient" hidden id="register">demo01</button>

    <!-- The Modal REgister -->
    <div id="register-modal" class="modal">
        <!-- Modal content -->
        <div class="modal-content">
            <a class="close" href="<c:url value="doctor/CalendarExtended"/>"><i class="fa fa-times fa-fw"></i> Inchide</a>
            <div id="get-managePacient">
                Se Incarca
            </div>

        </div>
    </div>

</main>
<script>

    $(document).ready(function() {

        $(".run-manager-pacient").animatedModal({
            animatedIn: 'zoomIn',
            animatedOut: 'bounceOut',

            color: 'rgba(178, 223, 219, 0.92)',
            // Callbacks
            beforeOpen: function () {
                console.log("The animation was called");
            },
            afterOpen: function () {
                console.log("The animation is completed");
            },
            beforeClose: function () {
                console.log("The animation was called");
            },
            afterClose: function () {
                console.log("The animation is completed");
            }
        });


        $('#calendar').fullCalendar({
            header: {
                left: 'prev ',
                center: 'title',
                right:'next'
            },
            columnFormat: 'dddd',
            timeFormat: 'H(:mm)',
            lang: 'ro',
            selectable: false,
            hiddenDays:[0,6],

            businessHours: {
                // days of week. an array of zero-based day of week integers (0=Sunday)
                dow: [ 1, 2, 3, 4,5 ] ,// Monday - Thursday

                start: '9:00', // a start time (10am in this example)
                end: '18:00', // an end time (6pm in this example)
            },
            dayClick: function(date, jsEvent, view) {


                var dateValue = date.format();

                $.get("managePacient/"  + dateValue + "", function (data) {
                    $("#get-managePacient").html(data);
                });
                $('#register').click();

            },

            select: function(start, end) {
                var title = prompt('Event Title:');
                var eventData;
                if (title) {
                    eventData = {
                        title: title,
                        start: start,
                        end: end
                    };
                    $('#calendar').fullCalendar('renderEvent', eventData, true); // stick? = true
                }
                $('#calendar').fullCalendar('unselect');
            },
            editable: true,
            eventLimit: true, // allow "more" link when too many events
            events: [
                <c:forEach items="${meetings}" var="meeting">
                {
                    title: '${meeting.hourTime}-${meeting.client.clientName}',
                    start: '${meeting.dateTime}'
                },
                <%--<td> ${meeting.hourTime}</td>--%>
                </c:forEach>
            ]
        });

    });

</script>

</body>
</html>

