<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: andrei
  Date: 18.04.2016
  Time: 16:15
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<!DOCTYPE html>
<html lang="ro">
<meta http-equiv="content-type" content="text/html; charset=UTF-8"/>
<meta name="description" content="Serviciu pentru Programarea la medic">
<meta name="keywords" content="Dinti, programare, dental, stomatologie ">
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="author" content="Andrei Rotari">

<head>
    <%@include file="/WEB-INF/views/template/headering.jsp" %>
    <%@include file="/WEB-INF/views/template/js-libs.jsp" %>
    <title>In curs de dezvoltare</title>
</head>

<body>
<header class="container-fluid">
    <%@include file="/WEB-INF/views/template/nav.jsp" %>
</header>

<div class="inner-wr container">


    <form:form action="${pageContext.request.contextPath}/doctor/addDocScheduler" method="post" id="worckTime"
               commandName="worckTime">

        <c:forEach items="${worckTimes}" var="day">
            <div class="col-xs-6">
                <div class=" form-group"><c:out value="${day.title}"></c:out></div>
                <input hidden name="title[]" value="${day.title}"></inputhidden>

                <div class=" form-group">
                    <label for="choose-time">time start</label>
                    <input class="form-control" name="start[]" value="08:00:00" type="time"/>
                </div>
                <div class=" form-group">
                    <label for="choose-time">time start</label>
                    <input name="end[]" class="form-control" value="18:00:00" type="time"/>
                </div>
                <div class=" form-group">
                    <label>Zi liberă</label>
                    <input type="checkbox" checked=""/>
                </div>
            </div>
        </c:forEach>
        <input type="submit" id="btn btn-info" value="Confirma" class="col-xs-3">
        <%--<a href="<c:url value="/"/> "><i class="fa fa-times-circle" aria-hidden="true"></i> Inapoi</a>--%>
    </form:form>

</div>

<div class="mt-10"></div>
<%@include file="/WEB-INF/views/template/footer.jsp" %>


</body>
</html>

