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
<%@include file="/WEB-INF/views/template/nav.jsp" %>
<div class="container">
    <h1 class="text-center mt-40 text-meeting-top">Creare fișă medicală.</h1>
    <h1>Fișa medicală a pacientului ${fisa.client.clientName}</h1>
    <form:form action="${pageContext.request.contextPath}/addFisa" method="post" id="fisa" commandName="fisa">
        <form:hidden path="client.clientId" class="form-control" value="${fisa.client.clientId}"/>
        <div class="form-group">
            <label>Diagnosticul</label>
            <form:input path="diagnosticul" class="form-control"/>
        </div>
        <div class="form-group">
            <label>Acuze</label>
            <form:input path="acuze" class="form-control"/>
        </div>
        <div class="form-group">
            <label>Boli antecedente și concomitente</label>
            <form:input path="boli" class="form-control"/>
        </div>
        <div class="form-group">
            <label>Evoluția bolii actuale</label>
            <form:input path="evolutiaBolii" class="form-control"/>
        </div>
        <div class="form-group">
            <label>Ocluzia</label>
            <form:input path="ocluzia" class="form-control"/>
        </div>
        <div class="form-group">
            <label>Starea mucoaseo, gingiilor, apofizelor alveolare și palatului dur</label>
            <form:input path="stareaMucoaseiEtc" class="form-control"/>
        </div>
        <p>The .table-striped class adds zebra-stripes to a table:</p>
        <table class="table table-striped">
            <thead>
            <tr>
                <th>Starea dinților de sus</th>
                <th>8</th>
                <th>7</th>
                <th>6</th>
                <th>5</th>
                <th>4</th>
                <th>3</th>
                <th>2</th>
                <th>1</th>
                <th>1</th>
                <th>2</th>
                <th>3</th>
                <th>4</th>
                <th>5</th>
                <th>6</th>
                <th>7</th>
                <th>8</th>
            </tr>
            </thead>
            <tbody>

            <c:forEach items="${starea}" var="StareaDinti">
                <tr>
                    <th>${StareaDinti.numeStare}</th>
                    <th><form:checkbox path="dintii.ul8" value="${StareaDinti.numeStare}"/></th>
                    <th><form:checkbox path="dintii.ul7" value="${StareaDinti.numeStare}"/></th>
                    <th><form:checkbox path="dintii.ul6" value="${StareaDinti.numeStare}"/></th>
                    <th><form:checkbox path="dintii.ul5" value="${StareaDinti.numeStare}"/></th>
                    <th><form:checkbox path="dintii.ul4" value="${StareaDinti.numeStare}"/></th>
                    <th><form:checkbox path="dintii.ul3" value="${StareaDinti.numeStare}"/></th>
                    <th><form:checkbox path="dintii.ul2" value="${StareaDinti.numeStare}"/></th>
                    <th><form:checkbox path="dintii.ul1" value="${StareaDinti.numeStare}"/></th>
                    <th><form:checkbox path="dintii.ur1" value="${StareaDinti.numeStare}"/></th>
                    <th><form:checkbox path="dintii.ur2" value="${StareaDinti.numeStare}"/></th>
                    <th><form:checkbox path="dintii.ur3" value="${StareaDinti.numeStare}"/></th>
                    <th><form:checkbox path="dintii.ur4" value="${StareaDinti.numeStare}"/></th>
                    <th><form:checkbox path="dintii.ur5" value="${StareaDinti.numeStare}"/></th>
                    <th><form:checkbox path="dintii.ur6" value="${StareaDinti.numeStare}"/></th>
                    <th><form:checkbox path="dintii.ur7" value="${StareaDinti.numeStare}"/></th>
                    <th><form:checkbox path="dintii.ur8" value="${StareaDinti.numeStare}"/></th>
                </tr>
            </c:forEach>
            </tbody>
        </table>

        <table class="table table-striped">
            <thead>
            <tr>
                <th>Starea dinților de jos</th>
                <th>8</th>
                <th>7</th>
                <th>6</th>
                <th>5</th>
                <th>4</th>
                <th>3</th>
                <th>2</th>
                <th>1</th>
                <th>1</th>
                <th>2</th>
                <th>3</th>
                <th>4</th>
                <th>5</th>
                <th>6</th>
                <th>7</th>
                <th>8</th>
            </tr>
            </thead>
            <tbody>

            <c:forEach items="${starea}" var="StareaDinti">
                <tr>
                    <th>${StareaDinti.numeStare}</th>
                    <th><form:checkbox path="dintii.dl8" value="${StareaDinti.numeStare}"/></th>
                    <th><form:checkbox path="dintii.dl7" value="${StareaDinti.numeStare}"/></th>
                    <th><form:checkbox path="dintii.dl6" value="${StareaDinti.numeStare}"/></th>
                    <th><form:checkbox path="dintii.dl5" value="${StareaDinti.numeStare}"/></th>
                    <th><form:checkbox path="dintii.dl4" value="${StareaDinti.numeStare}"/></th>
                    <th><form:checkbox path="dintii.dl3" value="${StareaDinti.numeStare}"/></th>
                    <th><form:checkbox path="dintii.dl2" value="${StareaDinti.numeStare}"/></th>
                    <th><form:checkbox path="dintii.dl1" value="${StareaDinti.numeStare}"/></th>
                    <th><form:checkbox path="dintii.dr1" value="${StareaDinti.numeStare}"/></th>
                    <th><form:checkbox path="dintii.dr2" value="${StareaDinti.numeStare}"/></th>
                    <th><form:checkbox path="dintii.dr3" value="${StareaDinti.numeStare}"/></th>
                    <th><form:checkbox path="dintii.dr4" value="${StareaDinti.numeStare}"/></th>
                    <th><form:checkbox path="dintii.dr5" value="${StareaDinti.numeStare}"/></th>
                    <th><form:checkbox path="dintii.dr6" value="${StareaDinti.numeStare}"/></th>
                    <th><form:checkbox path="dintii.dr7" value="${StareaDinti.numeStare}"/></th>
                    <th><form:checkbox path="dintii.dr8" value="${StareaDinti.numeStare}"/></th>
                </tr>
            </c:forEach>


            </tbody>
        </table>


        <button type="submit" class="btn btn-default">Submit</button>


    </form:form>

</div>
<%@include file="/WEB-INF/views/template/footer.jsp" %>
</body>
</html>
