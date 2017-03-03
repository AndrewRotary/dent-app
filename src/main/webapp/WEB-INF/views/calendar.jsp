<%@ page import="com.medapp.Calendar.Month,java.util.*,java.io.*,java.sql.*,com.medapp.*" errorPage="error.jsp" %>
<%-- TODO: CLEAN UP THE PAGE TAG ABOVE --%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ include file="calendarCommon.jsp" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<html>
<head>
    <title>Calendar</title>

    <%@include file="/WEB-INF/views/template/headering.jsp"%>
    <%@include file="/WEB-INF/views/template/js-libs.jsp"%>
</head>

<body id="regular_page">
<!-- navigation links end -->

    <%@include file="/WEB-INF/views/template/nav.jsp"%>

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
                        if( currentDayInt <= days[i][j] && currentMonthInt == aMonth.getMonth() && currentYearInt == aMonth.getYear() )
                        {
                    %><td class="today_cell">
                        <button type="button" data-toggle="modal" data-target="#modalAfisareOre" class="demo01" data-day="<%=days[i][j] %>" data-month="<% out.print(intMonth + 1);%>" data-year="<%=intYear%>" value="<%=intYear%>-<%out.print(intMonth + 1);%>-<%=days[i][j] %>" ><%=days[i][j]%> </button>
                    </td><%
                    }
                    else
                    {
                    %>
                        <td>
                            <button disabled type="button" title="Nedisponibil" class="demo01" data-day="<%=days[i][j] %>" data-month="<% out.print(intMonth + 1);%>" data-year="<%=intYear%>" value="<%=intYear%>-<%out.print(intMonth + 1);%>-<%=days[i][j] %>" ><%=days[i][j]%> </button>

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

<%--Modal Afiseaza orele--%>
<div class="modal fade" id="modalAfisareOre" role="dialog">
    <div class="modal-dialog">
        <!-- Modal content-->
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal">&times;</button>
                <h4 class="modal-title">Programare</h4>
            </div>
            <div class="modal-body" id="getListaOre">
                <div class="wr-loader">
                    <div class="loader"></div>
                </div>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-default" data-dismiss="modal">Închide</button>
            </div>
        </div>
    </div>
</div>

    <%@include file="/WEB-INF/views/template/footer.jsp"%>


<script>
    $( document ).ready(function() {
        //DropdownJs
        $('#myDropdown').ddslick({
            width: ' 100%',
            background: '#e8f5f4',
            onSelected: function(selectedData){
                var value = selectedData.selectedData.value;
                DoctorId = value;
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
                $("#getListaOre").html(data);
            });
        });
    });

</script>
</body>
</html>


