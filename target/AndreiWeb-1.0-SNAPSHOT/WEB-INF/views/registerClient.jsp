<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: andrei
  Date: 24.04.2016
  Time: 19:35
  To change this template use File | Settings | File Templates.
--%>
<!DOCTYPE html>
<html lang="ro">
<meta charset="UTF-8">
<meta name="description" content="Serviciu pentru Programarea la medic">
<meta name="keywords" content="Dinti, programare, dental, stomatologie ">
<meta name="viewport" content="width=device-width, initial-scale=1">

<head>
    <%@include file="/WEB-INF/views/template/headering.jsp"%>
    <%@include file="/WEB-INF/views/template/js-libs.jsp"%>
    <title>In curs de dezvoltare</title>
</head>

<body>
<header>
    <div class="container-fluid">
        <%@include file="/WEB-INF/views/template/nav.jsp"%>
    </div>
</header>
<div class="wr-register clearfix">
    <form:form action="${pageContext.request.contextPath}/register" method="post"
               commandName="client" class="form-register">
        <div class="form-group">
            <form:errors path="clientName" cssStyle="color: #ff0000"/>
            <form:input path="clientName" id="name" class="form-control input-register" type="text" placeholder="Nume" />
        </div>
        <div class="form-group">
            <span style="color: #ff0000">${emailMsg}</span><form:errors
                path="clientEmail" cssStyle="color: #ff0000"/>
            <form:input path="clientEmail" id="email" class="form-control input-register" type="text" placeholder="Email" />
        </div>
        <div class="form-group">
            <form:input path="clientPhone" id="phone" class="form-control input-register" type="text" placeholder="Numar de Contact"/>
        </div>
        <div class="form-group">
            <span style="color: #ff0000">${usernameMsg}</span><form:errors
                path="users.username" cssStyle="color: #ff0000"/>
            <form:input path="users.username" id="username" class="form-control input-register" type="text" placeholder="Nume Utilizator"/>
        </div>
        <div class="form-group">
            <span style="color: #ff0000">${pswMsg}</span><form:errors
                path="users.password" cssStyle="color: #ff0000"/>
            <form:password path="users.password" id="password" class="form-control input-register"  placeholder="Parola"/>
        </div>
        <button type="submit" value="submit" class="btn-register">Submit</button>
        <a href="<c:url value="/" />" class="btn-cancel">Cancel</a>

    </form:form>

</div>
<%@include file="/WEB-INF/views/template/footer.jsp"%>


</body>
</html>