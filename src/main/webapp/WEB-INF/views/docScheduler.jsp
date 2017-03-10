<%@ page errorPage="error.jsp" %>
<%-- TODO: CLEAN UP THE PAGE TAG ABOVE --%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ include file="calendarCommon.jsp" %>

<html>
<head>
    <title>Calendar</title>

    <%@include file="/WEB-INF/views/template/headering.jsp" %>

    <%@include file="/WEB-INF/views/template/js-libs.jsp" %>


</head>
<body>
<header class="container-fluid">
    <%@include file="/WEB-INF/views/template/nav.jsp" %>
</header>

<div class="inner-wr container">
    <%--<div id='calendar' class=""></div>--%>
    <%--<button class="btn btn-info" id="save"> save</button>--%>


</div>
<div class="mt-10"></div>
<%@include file="/WEB-INF/views/template/footer.jsp" %>
<script>

    //    $(document).ready(function() {
    //        $('#calendar').fullCalendar({
    //            header: {
    //                left: 'prev,next today',
    //                center: 'title',
    //                right: 'month,agendaWeek,agendaDay'
    //            },
    //            columnFormat: 'dddd',
    //            timeFormat: 'H(:mm)',
    //            lang: 'ro',
    //            selectable: false,
    //            hiddenDays:[0,6],
    //            navLinks: true, // can click day/week names to navigate views
    //            selectable: true,
    //            selectHelper: true,
    //            select: function(start, end) {
    //                alert("hello1");
    //                var title = prompt('Event Title:');
    //                var eventData;
    //                if (title) {
    //                    eventData = {
    //                        title: title,
    //                        start: start,
    //                        end: end
    //                    };
    //                    $('#calendar').fullCalendar('renderEvent', eventData, true); // stick? = true
    //                }
    //
    //            },
    //            dayClick: function(date, jsEvent, view) {
    //                console.log("getDay");
    ////                alert('Clicked on: ' + date.format());
    ////
    ////                alert('Coordinates: ' + jsEvent.pageX + ',' + jsEvent.pageY);
    ////
    ////                alert('Current view: ' + view.name);
    //
    //                // change the day's background color just for fun
    //                $(this).css('background-color', 'red');
    //
    //            },
    //            editable: true,
    //            eventLimit: true, // allow "more" link when too many events
    //            events: [
    //                {
    //                    title: 'All Day Event',
    //                    start: '2016-12-01'
    //                },
    //                {
    //                    title: 'Long Event',
    //                    start: '2016-12-07',
    //                    end: '2016-12-10'
    //                },
    //                {
    //                    id: 999,
    //                    title: 'Repeating Event',
    //                    start: '2016-12-09T16:00:00'
    //                },
    //                {
    //                    id: 999,
    //                    title: 'Repeating Event',
    //                    start: '2016-12-16T16:00:00'
    //                },
    //                {
    //                    title: 'Conference',
    //                    start: '2016-12-11',
    //                    end: '2016-12-13'
    //                },
    //                {
    //                    title: 'Meeting',
    //                    start: '2016-12-12T10:30:00',
    //                    end: '2016-12-12T12:30:00'
    //                },
    //                {
    //                    title: 'Lunch',
    //                    start: '2016-12-12T12:00:00'
    //                },
    //                {
    //                    title: 'Meeting',
    //                    start: '2016-12-12T14:30:00'
    //                },
    //                {
    //                    title: 'Happy Hour',
    //                    start: '2016-12-12T17:30:00'
    //                },
    //                {
    //                    title: 'Dinner',
    //                    start: '2016-12-12T20:00:00'
    //                },
    //                {
    //                    title: 'Birthday Party',
    //                    start: '2016-12-13T07:00:00'
    //                },
    //                {
    //                    title: 'Click for Google',
    //                    url: 'http://google.com/',
    //                    start: '2016-12-28'
    //                }
    //            ]
    //        });
    //
    //    });
    //    $(function () {
    //        $("#save").click(function () {
    //            var eventsFromCalendar = $('#calendar').fullCalendar( 'clientEvents' );
    //            console.log(eventsFromCalendar);
    //            $.ajax(
    //                {
    //
    //                    url: '@Url.Action("Save")',
    //                    type: 'POST',
    //                    traditional: true,
    //                    data: { eventsJson: JSON.stringify(eventsFromCalendar) },
    //                    dataType: "json",
    //                    success: function (response) {
    //                        alert(response);
    //                    },
    //                    error: function (xhr) {
    //                        debugger;
    //                        alert(xhr);
    //                    }
    //
    //                });
    //        });
    //    });

</script>

</body>
</html>

