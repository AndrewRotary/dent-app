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
<div class="container">
    <h1 class="text-center mt-40 text-meeting-top">Fișa medicală a pacientului ${fisa.client.clientName}</h1>
    <p>Creată pe data de ${fisa.date}</p>
    <form:form action="${pageContext.request.contextPath}/editFisa" method="post" id="fisa" commandName="fisa">
        <form:hidden path="fisaId" value="${fisa.fisaId}"/>
        <form:hidden path="dintii.dintiiId"  class="form-control" value="${fisa.dintii.dintiiId}"/>
        <div class="col-lg-6 col-sm-12">
            <div class="form-group">
                <label>Diagnosticul</label>
                <form:input path="diagnosticul" value="${fisa.diagnosticul}"  class="form-control"/>
            </div>
            <div class="form-group">
                <label>Acuze</label>
                <form:input path="acuze" value="${fisa.acuze}" class="form-control"/>
            </div>
            <div class="form-group">
                <label>Boli antecedente și concomitente</label>
                <form:input path="boli" value="${fisa.boli}"  class="form-control"/>
            </div>
            <div class="form-group">
                <label>Evoluția bolii actuale</label>
                <form:input path="evolutiaBolii" value="${fisa.evolutiaBolii}" class="form-control"/>
            </div>
            <div class="form-group">
                <label>Ocluzia</label>
                <form:input path="ocluzia" value="${fisa.ocluzia}"  class="form-control"/>
            </div>
            <div class="form-group">
                <label>Starea mucoaseo, gingiilor, apofizelor alveolare și palatului dur</label>
                <form:input path="stareaMucoaseiEtc" value="${fisa.stareaMucoaseiEtc}" class="form-control"/>
            </div>
        </div>
        <div class="col-lg-6 col-sm-12">
            <h1>Dinții de sus</h1>
            <table class="table table-striped">
                <thead>
                <tr>
                    <th>Starea</th>
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
                        <th>
                            <c:set var="contor" value="${true}" scope="session"></c:set>
                            <c:forEach items="${fisa.dintii.ul8}" var="dinte">
                                <c:choose>
                                    <c:when test="${dinte == StareaDinti.numeStare}">
                                        <form:checkbox path="dintii.ul8" value="${StareaDinti.numeStare}" checked="checked" />
                                        <c:set var="contor" value="${false}" scope="session"></c:set>
                                    </c:when>
                                </c:choose>
                            </c:forEach>
                            <c:if test="${contor == true}">
                                <form:checkbox path="dintii.ul8" value="${StareaDinti.numeStare}" />
                            </c:if>
                        </th>
                        <th>
                            <c:set var="contor" value="${true}" scope="session"></c:set>
                            <c:forEach items="${fisa.dintii.ul7}" var="dinte">
                                <c:choose>
                                    <c:when test="${dinte == StareaDinti.numeStare}">
                                        <form:checkbox path="dintii.ul7" value="${StareaDinti.numeStare}" checked="checked" />
                                        <c:set var="contor" value="${false}" scope="session"></c:set>
                                    </c:when>
                                </c:choose>
                            </c:forEach>
                            <c:if test="${contor == true}">
                                <form:checkbox path="dintii.ul7" value="${StareaDinti.numeStare}" />
                            </c:if>
                        </th>
                        <th>
                            <c:set var="contor" value="${true}" scope="session"></c:set>
                            <c:forEach items="${fisa.dintii.ul6}" var="dinte">
                                <c:choose>
                                    <c:when test="${dinte == StareaDinti.numeStare}">
                                        <form:checkbox path="dintii.ul6" value="${StareaDinti.numeStare}" checked="checked" />
                                        <c:set var="contor" value="${false}" scope="session"></c:set>
                                    </c:when>
                                </c:choose>
                            </c:forEach>
                            <c:if test="${contor == true}">
                                <form:checkbox path="dintii.ul6" value="${StareaDinti.numeStare}" />
                            </c:if>
                        </th>
                        <th>
                            <c:set var="contor" value="${true}" scope="session"></c:set>
                            <c:forEach items="${fisa.dintii.ul5}" var="dinte">
                                <c:choose>
                                    <c:when test="${dinte == StareaDinti.numeStare}">
                                        <form:checkbox path="dintii.ul5" value="${StareaDinti.numeStare}" checked="checked" />
                                        <c:set var="contor" value="${false}" scope="session"></c:set>
                                    </c:when>
                                </c:choose>
                            </c:forEach>
                            <c:if test="${contor == true}">
                                <form:checkbox path="dintii.ul5" value="${StareaDinti.numeStare}" />
                            </c:if>
                        </th>
                        <th>
                            <c:set var="contor" value="${true}" scope="session"></c:set>
                            <c:forEach items="${fisa.dintii.ul4}" var="dinte">
                                <c:choose>
                                    <c:when test="${dinte == StareaDinti.numeStare}">
                                        <form:checkbox path="dintii.ul4" value="${StareaDinti.numeStare}" checked="checked" />
                                        <c:set var="contor" value="${false}" scope="session"></c:set>
                                    </c:when>
                                </c:choose>
                            </c:forEach>
                            <c:if test="${contor == true}">
                                <form:checkbox path="dintii.ul4" value="${StareaDinti.numeStare}" />
                            </c:if>
                        </th>
                        <th>
                            <c:set var="contor" value="${true}" scope="session"></c:set>
                            <c:forEach items="${fisa.dintii.ul3}" var="dinte">
                                <c:choose>
                                    <c:when test="${dinte == StareaDinti.numeStare}">
                                        <form:checkbox path="dintii.ul3" value="${StareaDinti.numeStare}" checked="checked" />
                                        <c:set var="contor" value="${false}" scope="session"></c:set>
                                    </c:when>
                                </c:choose>
                            </c:forEach>
                            <c:if test="${contor == true}">
                                <form:checkbox path="dintii.ul3" value="${StareaDinti.numeStare}" />
                            </c:if>
                        </th>
                        <th>
                            <c:set var="contor" value="${true}" scope="session"></c:set>
                            <c:forEach items="${fisa.dintii.ul2}" var="dinte">
                                <c:choose>
                                    <c:when test="${dinte == StareaDinti.numeStare}">
                                        <form:checkbox path="dintii.ul2" value="${StareaDinti.numeStare}" checked="checked" />
                                        <c:set var="contor" value="${false}" scope="session"></c:set>
                                    </c:when>
                                </c:choose>
                            </c:forEach>
                            <c:if test="${contor == true}">
                                <form:checkbox path="dintii.ul2" value="${StareaDinti.numeStare}" />
                            </c:if>
                        </th>
                        <th>
                            <c:set var="contor" value="${true}" scope="session"></c:set>
                            <c:forEach items="${fisa.dintii.ul1}" var="dinte">
                                <c:choose>
                                    <c:when test="${dinte == StareaDinti.numeStare}">
                                        <form:checkbox path="dintii.ul1" value="${StareaDinti.numeStare}" checked="checked" />
                                        <c:set var="contor" value="${false}" scope="session"></c:set>
                                    </c:when>
                                </c:choose>
                            </c:forEach>
                            <c:if test="${contor == true}">
                                <form:checkbox path="dintii.ul1" value="${StareaDinti.numeStare}" />
                            </c:if>
                        </th>
                        <th>
                            <c:set var="contor" value="${true}" scope="session"></c:set>
                            <c:forEach items="${fisa.dintii.ur1}" var="dinte">
                                <c:choose>
                                    <c:when test="${dinte == StareaDinti.numeStare}">
                                        <form:checkbox path="dintii.ur1" value="${StareaDinti.numeStare}" checked="checked" />
                                        <c:set var="contor" value="${false}" scope="session"></c:set>
                                    </c:when>
                                </c:choose>
                            </c:forEach>
                            <c:if test="${contor == true}">
                                <form:checkbox path="dintii.ur1" value="${StareaDinti.numeStare}" />
                            </c:if>
                        </th>
                        <th>
                            <c:set var="contor" value="${true}" scope="session"></c:set>
                            <c:forEach items="${fisa.dintii.ur2}" var="dinte">
                                <c:choose>
                                    <c:when test="${dinte == StareaDinti.numeStare}">
                                        <form:checkbox path="dintii.ur2" value="${StareaDinti.numeStare}" checked="checked" />
                                        <c:set var="contor" value="${false}" scope="session"></c:set>
                                    </c:when>
                                </c:choose>
                            </c:forEach>
                            <c:if test="${contor == true}">
                                <form:checkbox path="dintii.ur2" value="${StareaDinti.numeStare}" />
                            </c:if>
                        </th>
                        <th>
                            <c:set var="contor" value="${true}" scope="session"></c:set>
                            <c:forEach items="${fisa.dintii.ur3}" var="dinte">
                                <c:choose>
                                    <c:when test="${dinte == StareaDinti.numeStare}">
                                        <form:checkbox path="dintii.ur3" value="${StareaDinti.numeStare}" checked="checked" />
                                        <c:set var="contor" value="${false}" scope="session"></c:set>
                                    </c:when>
                                </c:choose>
                            </c:forEach>
                            <c:if test="${contor == true}">
                                <form:checkbox path="dintii.ur3" value="${StareaDinti.numeStare}" />
                            </c:if>
                        </th>
                        <th>
                            <c:set var="contor" value="${true}" scope="session"></c:set>
                            <c:forEach items="${fisa.dintii.ur4}" var="dinte">
                                <c:choose>
                                    <c:when test="${dinte == StareaDinti.numeStare}">
                                        <form:checkbox path="dintii.ur4" value="${StareaDinti.numeStare}" checked="checked" />
                                        <c:set var="contor" value="${false}" scope="session"></c:set>
                                    </c:when>
                                </c:choose>
                            </c:forEach>
                            <c:if test="${contor == true}">
                                <form:checkbox path="dintii.ur4" value="${StareaDinti.numeStare}" />
                            </c:if>
                        </th>
                        <th>
                            <c:set var="contor" value="${true}" scope="session"></c:set>
                            <c:forEach items="${fisa.dintii.ur5}" var="dinte">
                                <c:choose>
                                    <c:when test="${dinte == StareaDinti.numeStare}">
                                        <form:checkbox path="dintii.ur5" value="${StareaDinti.numeStare}" checked="checked" />
                                        <c:set var="contor" value="${false}" scope="session"></c:set>
                                    </c:when>
                                </c:choose>
                            </c:forEach>
                            <c:if test="${contor == true}">
                                <form:checkbox path="dintii.ur5" value="${StareaDinti.numeStare}" />
                            </c:if>
                        </th>
                        <th>
                            <c:set var="contor" value="${true}" scope="session"></c:set>
                            <c:forEach items="${fisa.dintii.ur6}" var="dinte">
                                <c:choose>
                                    <c:when test="${dinte == StareaDinti.numeStare}">
                                        <form:checkbox path="dintii.ur6" value="${StareaDinti.numeStare}" checked="checked" />
                                        <c:set var="contor" value="${false}" scope="session"></c:set>
                                    </c:when>
                                </c:choose>
                            </c:forEach>
                            <c:if test="${contor == true}">
                                <form:checkbox path="dintii.ur6" value="${StareaDinti.numeStare}" />
                            </c:if>
                        </th>
                        <th>
                            <c:set var="contor" value="${true}" scope="session"></c:set>
                            <c:forEach items="${fisa.dintii.ur7}" var="dinte">
                                <c:choose>
                                    <c:when test="${dinte == StareaDinti.numeStare}">
                                        <form:checkbox path="dintii.ur8" value="${StareaDinti.numeStare}" checked="checked" />
                                        <c:set var="contor" value="${false}" scope="session"></c:set>
                                    </c:when>
                                </c:choose>
                            </c:forEach>
                            <c:if test="${contor == true}">
                                <form:checkbox path="dintii.ur7" value="${StareaDinti.numeStare}" />
                            </c:if>
                        </th>
                        <th>
                            <c:set var="contor" value="${true}" scope="session"></c:set>
                            <c:forEach items="${fisa.dintii.ur8}" var="dinte">
                                <c:choose>
                                    <c:when test="${dinte == StareaDinti.numeStare}">
                                        <form:checkbox path="dintii.ur8" value="${StareaDinti.numeStare}" checked="checked" />
                                        <c:set var="contor" value="${false}" scope="session"></c:set>
                                    </c:when>
                                </c:choose>
                            </c:forEach>
                            <c:if test="${contor == true}">
                                <form:checkbox path="dintii.ur8" value="${StareaDinti.numeStare}" />
                            </c:if>
                        </th>
                    </tr>
                </c:forEach>
                </tbody>
            </table>
            <h1>Dinții de jos</h1>
            <table class="table table-striped">
                <thead>
                <tr>
                    <th>Starea</th>
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
                        <th>
                            <c:set var="contor" value="${true}" scope="session"></c:set>
                            <c:forEach items="${fisa.dintii.dl8}" var="dinte">
                                <c:choose>
                                    <c:when test="${dinte == StareaDinti.numeStare}">
                                        <form:checkbox path="dintii.dl8" value="${StareaDinti.numeStare}" checked="checked" />
                                        <c:set var="contor" value="${false}" scope="session"></c:set>
                                    </c:when>
                                </c:choose>
                            </c:forEach>
                            <c:if test="${contor == true}">
                                <form:checkbox path="dintii.dl8" value="${StareaDinti.numeStare}" />
                            </c:if>
                        </th>
                        <th>
                            <c:set var="contor" value="${true}" scope="session"></c:set>
                            <c:forEach items="${fisa.dintii.dl7}" var="dinte">
                                <c:choose>
                                    <c:when test="${dinte == StareaDinti.numeStare}">
                                        <form:checkbox path="dintii.dl7" value="${StareaDinti.numeStare}" checked="checked" />
                                        <c:set var="contor" value="${false}" scope="session"></c:set>
                                    </c:when>
                                </c:choose>
                            </c:forEach>
                            <c:if test="${contor == true}">
                                <form:checkbox path="dintii.dl7" value="${StareaDinti.numeStare}" />
                            </c:if>
                        </th>
                        <th>
                            <c:set var="contor" value="${true}" scope="session"></c:set>
                            <c:forEach items="${fisa.dintii.dl6}" var="dinte">
                                <c:choose>
                                    <c:when test="${dinte == StareaDinti.numeStare}">
                                        <form:checkbox path="dintii.dl6" value="${StareaDinti.numeStare}" checked="checked" />
                                        <c:set var="contor" value="${false}" scope="session"></c:set>
                                    </c:when>
                                </c:choose>
                            </c:forEach>
                            <c:if test="${contor == true}">
                                <form:checkbox path="dintii.dl6" value="${StareaDinti.numeStare}" />
                            </c:if>
                        </th>
                        <th>
                            <c:set var="contor" value="${true}" scope="session"></c:set>
                            <c:forEach items="${fisa.dintii.dl5}" var="dinte">
                                <c:choose>
                                    <c:when test="${dinte == StareaDinti.numeStare}">
                                        <form:checkbox path="dintii.dl5" value="${StareaDinti.numeStare}" checked="checked" />
                                        <c:set var="contor" value="${false}" scope="session"></c:set>
                                    </c:when>
                                </c:choose>
                            </c:forEach>
                            <c:if test="${contor == true}">
                                <form:checkbox path="dintii.dl5" value="${StareaDinti.numeStare}" />
                            </c:if>
                        </th>
                        <th>
                            <c:set var="contor" value="${true}" scope="session"></c:set>
                            <c:forEach items="${fisa.dintii.dl4}" var="dinte">
                                <c:choose>
                                    <c:when test="${dinte == StareaDinti.numeStare}">
                                        <form:checkbox path="dintii.dl4" value="${StareaDinti.numeStare}" checked="checked" />
                                        <c:set var="contor" value="${false}" scope="session"></c:set>
                                    </c:when>
                                </c:choose>
                            </c:forEach>
                            <c:if test="${contor == true}">
                                <form:checkbox path="dintii.dl4" value="${StareaDinti.numeStare}" />
                            </c:if>
                        </th>
                        <th>
                            <c:set var="contor" value="${true}" scope="session"></c:set>
                            <c:forEach items="${fisa.dintii.dl3}" var="dinte">
                                <c:choose>
                                    <c:when test="${dinte == StareaDinti.numeStare}">
                                        <form:checkbox path="dintii.dl3" value="${StareaDinti.numeStare}" checked="checked" />
                                        <c:set var="contor" value="${false}" scope="session"></c:set>
                                    </c:when>
                                </c:choose>
                            </c:forEach>
                            <c:if test="${contor == true}">
                                <form:checkbox path="dintii.dl3" value="${StareaDinti.numeStare}" />
                            </c:if>
                        </th>
                        <th>
                            <c:set var="contor" value="${true}" scope="session"></c:set>
                            <c:forEach items="${fisa.dintii.dl2}" var="dinte">
                                <c:choose>
                                    <c:when test="${dinte == StareaDinti.numeStare}">
                                        <form:checkbox path="dintii.dl2" value="${StareaDinti.numeStare}" checked="checked" />
                                        <c:set var="contor" value="${false}" scope="session"></c:set>
                                    </c:when>
                                </c:choose>
                            </c:forEach>
                            <c:if test="${contor == true}">
                                <form:checkbox path="dintii.dl2" value="${StareaDinti.numeStare}" />
                            </c:if>
                        </th>
                        <th>
                            <c:set var="contor" value="${true}" scope="session"></c:set>
                            <c:forEach items="${fisa.dintii.dl1}" var="dinte">
                                <c:choose>
                                    <c:when test="${dinte == StareaDinti.numeStare}">
                                        <form:checkbox path="dintii.dl1" value="${StareaDinti.numeStare}" checked="checked" />
                                        <c:set var="contor" value="${false}" scope="session"></c:set>
                                    </c:when>
                                </c:choose>
                            </c:forEach>
                            <c:if test="${contor == true}">
                                <form:checkbox path="dintii.dl1" value="${StareaDinti.numeStare}" />
                            </c:if>
                        </th>
                        <th>
                            <c:set var="contor" value="${true}" scope="session"></c:set>
                            <c:forEach items="${fisa.dintii.dr1}" var="dinte">
                                <c:choose>
                                    <c:when test="${dinte == StareaDinti.numeStare}">
                                        <form:checkbox path="dintii.dr1" value="${StareaDinti.numeStare}" checked="checked" />
                                        <c:set var="contor" value="${false}" scope="session"></c:set>
                                    </c:when>
                                </c:choose>
                            </c:forEach>
                            <c:if test="${contor == true}">
                                <form:checkbox path="dintii.dr1" value="${StareaDinti.numeStare}" />
                            </c:if>
                        </th>
                        <th>
                            <c:set var="contor" value="${true}" scope="session"></c:set>
                            <c:forEach items="${fisa.dintii.dr2}" var="dinte">
                                <c:choose>
                                    <c:when test="${dinte == StareaDinti.numeStare}">
                                        <form:checkbox path="dintii.dr2" value="${StareaDinti.numeStare}" checked="checked" />
                                        <c:set var="contor" value="${false}" scope="session"></c:set>
                                    </c:when>
                                </c:choose>
                            </c:forEach>
                            <c:if test="${contor == true}">
                                <form:checkbox path="dintii.dr2" value="${StareaDinti.numeStare}" />
                            </c:if>
                        </th>
                        <th>
                            <c:set var="contor" value="${true}" scope="session"></c:set>
                            <c:forEach items="${fisa.dintii.dr3}" var="dinte">
                                <c:choose>
                                    <c:when test="${dinte == StareaDinti.numeStare}">
                                        <form:checkbox path="dintii.dr3" value="${StareaDinti.numeStare}" checked="checked" />
                                        <c:set var="contor" value="${false}" scope="session"></c:set>
                                    </c:when>
                                </c:choose>
                            </c:forEach>
                            <c:if test="${contor == true}">
                                <form:checkbox path="dintii.dr3" value="${StareaDinti.numeStare}" />
                            </c:if>
                        </th>
                        <th>
                            <c:set var="contor" value="${true}" scope="session"></c:set>
                            <c:forEach items="${fisa.dintii.dr4}" var="dinte">
                                <c:choose>
                                    <c:when test="${dinte == StareaDinti.numeStare}">
                                        <form:checkbox path="dintii.dr4" value="${StareaDinti.numeStare}" checked="checked" />
                                        <c:set var="contor" value="${false}" scope="session"></c:set>
                                    </c:when>
                                </c:choose>
                            </c:forEach>
                            <c:if test="${contor == true}">
                                <form:checkbox path="dintii.dr4" value="${StareaDinti.numeStare}" />
                            </c:if>
                        </th>
                        <th>
                            <c:set var="contor" value="${true}" scope="session"></c:set>
                            <c:forEach items="${fisa.dintii.dr5}" var="dinte">
                                <c:choose>
                                    <c:when test="${dinte == StareaDinti.numeStare}">
                                        <form:checkbox path="dintii.dr5" value="${StareaDinti.numeStare}" checked="checked" />
                                        <c:set var="contor" value="${false}" scope="session"></c:set>
                                    </c:when>
                                </c:choose>
                            </c:forEach>
                            <c:if test="${contor == true}">
                                <form:checkbox path="dintii.dr5" value="${StareaDinti.numeStare}" />
                            </c:if>
                        </th>
                        <th>
                            <c:set var="contor" value="${true}" scope="session"></c:set>
                            <c:forEach items="${fisa.dintii.dr6}" var="dinte">
                                <c:choose>
                                    <c:when test="${dinte == StareaDinti.numeStare}">
                                        <form:checkbox path="dintii.dr6" value="${StareaDinti.numeStare}" checked="checked" />
                                        <c:set var="contor" value="${false}" scope="session"></c:set>
                                    </c:when>
                                </c:choose>
                            </c:forEach>
                            <c:if test="${contor == true}">
                                <form:checkbox path="dintii.dr6" value="${StareaDinti.numeStare}" />
                            </c:if>
                        </th>
                        <th>
                            <c:set var="contor" value="${true}" scope="session"></c:set>
                            <c:forEach items="${fisa.dintii.dr7}" var="dinte">
                                <c:choose>
                                    <c:when test="${dinte == StareaDinti.numeStare}">
                                        <form:checkbox path="dintii.dr7" value="${StareaDinti.numeStare}" checked="checked" />
                                        <c:set var="contor" value="${false}" scope="session"></c:set>
                                    </c:when>
                                </c:choose>
                            </c:forEach>
                            <c:if test="${contor == true}">
                                <form:checkbox path="dintii.dr7" value="${StareaDinti.numeStare}" />
                            </c:if>
                        </th>
                        <th>
                            <c:set var="contor" value="${true}" scope="session"></c:set>
                            <c:forEach items="${fisa.dintii.dr8}" var="dinte">
                                <c:choose>
                                    <c:when test="${dinte == StareaDinti.numeStare}">
                                        <form:checkbox path="dintii.dr8" value="${StareaDinti.numeStare}" checked="checked" />
                                        <c:set var="contor" value="${false}" scope="session"></c:set>
                                    </c:when>
                                </c:choose>
                            </c:forEach>
                            <c:if test="${contor == true}">
                                <form:checkbox path="dintii.dr8" value="${StareaDinti.numeStare}" />
                            </c:if>
                        </th>
                    </tr>
                </c:forEach>
                </tbody>
            </table>
            <div class="form-group">
                <button type="submit" class="btn btn-info">Editeză</button>
            </div>
         </div>

    </form:form>
    <c:if test="${fisa.dateEdited != null}">
        <p>Ultima oară a fost editat pe data de: ${fisa.dateEdited}</p>
    </c:if>
</div>
<%@include file="/WEB-INF/views/template/footer.jsp"%>
</body>
</html>
