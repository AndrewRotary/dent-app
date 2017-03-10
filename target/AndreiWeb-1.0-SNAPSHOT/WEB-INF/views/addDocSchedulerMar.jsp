<%--
  Created by IntelliJ IDEA.
  User: andrei
  Date: 18.04.2016
  Time: 16:15
  To change this template use File | Settings | File Templates.
--%>

<%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<form:form action="${pageContext.request.contextPath}/doctor/addDocScheduler" method="post" id="worckTime"
           commandName="worckTime">
    <%--<form:hidden path="doctor.doctorId" name="doctor"  id="choose-time" value="${doctor.doctorId}"  ></form:hidden>--%>
    <div class="col-xs-3 form-group">${worckTime.title} </div>
    <form:hidden path="title" name="title" value="${worckTime.title}"></form:hidden>
    <form:hidden path="week" class="form-control" value="2"/>
    <div class="col-xs-3 form-group">
        <label for="choose-time">time start</label>
        <form:input path="start" class="form-control" value="" type="time"/>
    </div>
    <div class="col-xs-3 form-group">
        <label for="choose-time">time end</label>
        <form:input path="end" class="form-control" value="" type="time"/>
    </div>
    <div class="col-xs-2 form-group">
        <label>Zi liberă</label>
        <form:checkbox path="dountWork" checked="${worckTime.dountWork}"/>
    </div>
    <input type="submit" id="btn btn-info" value="Confirma" class="col-xs-3">
</form:form>


