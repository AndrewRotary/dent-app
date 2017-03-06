<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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
<div class="inner-wr">
<form:form action="${pageContext.request.contextPath}/doctor/addNews" method="post" id="addNews"
           commandName="news" enctype="multipart/form-data">
    <div class="form-group">
        <label for="">title</label>
        <form:input class="form-control" type="text" path="title"/>
    </div>
    <div class="form-group">
        <label for="">info</label>
        <form:textarea class="form-control" type="text" path="info"></form:textarea>
    </div>
    <div class="form-group">
        <label for="">Link Video</label>
        <form:input class="form-control" type="text" path="linkVideoPath"/>
    </div>
    <div class="form-group">
        <label class="control-label" for="newsImage">Incarca Imaginea</label>
        <form:input id="newsImage" path="newsImage" type="file" class="" lang="ro" />
    </div>
    <button type="submit" class="btn btn-default">Submit</button>
</form:form>
</div>
<%@include file="/WEB-INF/views/template/footer.jsp" %>
</body>
</html>
