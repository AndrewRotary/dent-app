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

<body id="regular_page">
<!-- navigation links end -->
<div class="container-fluid">
    <%@include file="/WEB-INF/views/template/nav.jsp"%>
</div>

    <div class="wr-paralax">
        <div class="parallax">
            <div class="parallax-inner">
                <div id="ex2" class="section-calendar">
                    <nav class="container">
                        <a class="col-md-2 col-xs-3 col-tn-2" href="">
                            <form method="post" class="">
                                <label>
                                    <i class="fa fa-chevron-left"></i>
                                    <input type="submit" name="PREV" value="" class="input-prev-next">
                                </label>
                                <input type="hidden" name="month" value="<%=prevMonth%>">
                                <input type="hidden" name="year" value="<%=prevYear%>">
                            </form>
                        </a>
                        <span class="month col-md-4 col-xs-6 col-tn-8"> <%=monthName%>, <%=intYear%></span>
                        <a class="col-md-2 col-xs-3 col-tn-2" href="" id="nextMonthAjax">
                            <form method="post" class="">
                                <label>
                                    <i class="fa fa-chevron-right"> </i>
                                    <input type="submit" name="NEXT" value="" class="input-prev-next">
                                </label>

                                <input type="hidden" name="month" value="<%=nextMonth%>">
                                <input type="hidden" name="year" value="<%=nextYear%>">
                            </form>
                        </a>
                        <div class="col-md-4  col-xs-12 select-doctor">
                            <select id="myDropdown">
                                <c:forEach items="${doctorTop}" var="doctorTop">
                                    <option value="${doctorTop.doctorId}" data-imagesrc="<c:url value="/resources/images/${doctorTop.doctorId}.png" /> " data-description="${doctorTop.doctorDegree}">${doctorTop.doctorName} ${doctorTop.doctorSurname}</option>
                                </c:forEach>
                            </select>
                        </div>
                    </nav>
                    <table class="container">
                        <tr>
                            <th class="th_day_cell day">Luni</th>
                            <th class="th_day_cell day">Marti</th>
                            <th class="th_day_cell day">Miercuri</th>
                            <th class="th_day_cell day">Joi</th>
                            <th class="th_day_cell day">Vineri</th>
                            <th class="th_day_cell day">Simbata</th>
                        </tr>
                        <%
                            {
                                Month aMonth = Month.getMonth( Integer.parseInt(currentMonthString), Integer.parseInt(currentYearString) );
                                int [][] days = aMonth.getDays();
                                for( int i=0; i<aMonth.getNumberOfWeeks(); i++ )
                                {
                        %><tr><%
                        for( int j=1; j<7; j++ )
                        {
                            if( days[i][j] == 0 )
                            {
                    %><td class="empty_day_cell">&nbsp;</td><%
                    }
                    else
                    {
                        // this is "today"
                        if( currentDayInt == days[i][j] && currentMonthInt == aMonth.getMonth() && currentYearInt == aMonth.getYear() )
                        {
                    %><td class="today_cell">
                            <a class="demo01" data-day="<%=days[i][j] %>" data-month="<% out.print(intMonth + 1);%>" data-year="<%=intYear%>" value="<%=intYear%>-<%out.print(intMonth + 1);%>-<%=days[i][j] %>" href="#animatedModal"><%=days[i][j]%> </a>
                    </td><%
                    }
                    else
                    {
                    %>
                        <td>
                            <a class="demo01" data-day="<%=days[i][j] %>" data-month="<% out.print(intMonth + 1);%>" data-year="<%=intYear%>" value="<%=intYear%>-<%out.print(intMonth + 1);%>-<%=days[i][j] %>" href="#animatedModal"><%=days[i][j]%> </a>
                        </td>
                        <%
                                    }
                                } // end outer if
                            } // end for
                        %>
                    </tr>
                        <%}
                        }
                        %>
                    </table>
                </div>
            </div>
        </div>
    </div>


<!--DEMO01-->
<div id="animatedModal">
    <!--THIS IS IMPORTANT! to close the modal, the class name has to match the name given on the ID  class="close-animatedModal" -->
    <a class="close-animatedModal" href="<c:url value="/"/>"><i class="fa fa-times fa-fw"></i> CLOSE</a>
    <div class="modal-content">
        <!--Your modal content goes here-->
        <div id="trol">
            <span class="h1-main">Ora curenta</span>
            <section class="row wr-make-appointment in-table">
                <div class="col-xs-4 col-xs-offset-8">
                    <h2 class="h1-main">Inregistreazate</h2>
                    <form>
                        <div class="form-group col-xs-2">
                            <input type="text" placeholder="Numele"/>
                        </div>
                        <div class="form-group col-xs-2">
                            <input type="text" placeholder="Email"/>
                        </div>
                        <meta name="author" content="Andrei Rotari"/>
                        <div class="form-group col-xs-2">
                            <input type="text" placeholder="Numarul de contact"/>
                            <button type="submit">Send</button>
                        </div>
                    </form>
                </div>
            </section>

            <table class="table-day">


            </table>
        </div>
    </div>
</div>


<%--<script src="<c:url value="/resources/js/animatedModal.min.js" />" ></script>--%>
<script>
    $( document ).ready(function() {
        //ajax no refresh page after change month
        //Modal
        $(".demo01").animatedModal({
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
        //DropdownJs
        $('#myDropdown').ddslick({
            width: ' 100%',
            background: '#e8f5f4',
            onSelected: function(selectedData){
                var value = selectedData.selectedData.value;
                DoctorId = value;
                //$("#selectDoc").val(value);
            }
        });

        var DoctorId, Date;

        $('.demo01').on('click', function () {
            var dateValue = $(this).attr('value');
            var dataMonth = $(this).data('month');
            var dataDay = $(this).data('day');
            var dataYear = $(this).data('year');
            if (dataMonth < 12) {
                dataMonth = '0' + dataMonth;
            }
            $('.inputDate').val(dateValue);
            $('.inputDate').text(dateValue);
            Date = dataYear + '-' + dataMonth + '-' + dataDay;

            $.get("calendar/hourVerify/" + DoctorId + "/" + dateValue + "", function (data) {
                $("#trol").html(data);
            });

        });

    });

</script>
</body>
</html>


