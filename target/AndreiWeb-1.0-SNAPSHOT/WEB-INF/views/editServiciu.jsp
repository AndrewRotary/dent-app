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
<meta http-equiv="content-type" content="text/html; charset=UTF-8" />
<meta name="description" content="Serviciu pentru Programarea la medic">
<meta name="keywords" content="Dinti, programare, dental, stomatologie ">
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="author" content="Andrei Rotari">

<head>
    <%@include file="/WEB-INF/views/template/headering.jsp"%>
    <%@include file="/WEB-INF/views/template/js-libs.jsp"%>
    <title>In curs de dezvoltare</title>
</head>
<body>
<%@include file="/WEB-INF/views/template/nav.jsp"%>
<div class="container inner-wr">
    <h1 class="text-center mt-40 text-meeting-top">Editare Serviciu.</h1>
      <form:form action="${pageContext.request.contextPath}/addServiciu" method="post" id="serviciu" commandName="serviciu">
          <form:hidden path="serviciuId" value="${serviciu.serviciuId}"/>
        <div class="form-group">
            <label>Denumire</label>
            <form:input path="name"  value="${serviciu.name}" class="form-control"/>
        </div>
        <div class="form-group">
            <label>Detalii</label>
            <form:textarea path="about" cols="8" value="${serviciu.about}" class="form-control"/>
        </div>
        <div class="form-group">
            <label>Preț</label>
            <form:input path="price" value="${serviciu.price}" class="form-control"/>
        </div>
        <%--<div class="form-group">--%>
            <%--<label class="control-label" for="serviceImage">Imaginea serviciului</label>--%>
            <%--<form:input id="serviceImage" path="serviceImage" type="file" class="btn btn-info" lang="ro" />--%>
        <%--</div>--%>
        <button type="submit" class="btn btn-default">Submit</button>


    </form:form>

</div>
<%@include file="/WEB-INF/views/template/footer.jsp"%>
</body>
</html>
