<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: andrei
  Date: 24.04.2016
  Time: 19:35
  To change this template use File | Settings | File Templates.
--%>


<form:form action="${pageContext.request.contextPath}/register" method="post"
           commandName="client" class="form-reg">
    <div class="form-group">
        <form:errors path="clientName" cssStyle="color: #ff0000"/>
        <form:input path="clientName" id="name" class="form-control" type="text" placeholder="Nume" />
    </div>
    <div class="form-group">
        <span style="color: #ff0000">${emailMsg}</span><form:errors
            path="clientEmail" cssStyle="color: #ff0000"/>
        <form:input path="clientEmail" id="email" class="form-control" type="text" placeholder="Email" />
    </div>
    <div class="form-group">
        <form:input path="clientPhone" id="phone" class="form-control" type="text" placeholder="Numar de Contact"/>
    </div>
    <div class="form-group">
        <span style="color: #ff0000">${usernameMsg}</span><form:errors
            path="users.username" cssStyle="color: #ff0000"/>
        <form:input path="users.username" id="username" class="form-control" type="text" placeholder="Nume Utilizator"/>
    </div>
    <div class="form-group">
        <span style="color: #ff0000">${pswMsg}</span><form:errors
            path="users.password" cssStyle="color: #ff0000"/>
        <form:password path="users.password" id="password" class="form-control"  placeholder="Parola"/>
    </div>
    <input type="submit" value="submit" class="btn btn-default">

</form:form>

