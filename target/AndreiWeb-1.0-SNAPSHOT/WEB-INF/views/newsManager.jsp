<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
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
<link rel="shortcut icon" href="<c:url value="/resources/images/favicon.ico" />" type="image/x-icon">
<head>
    <%@include file="/WEB-INF/views/template/headering.jsp" %>
    <%@include file="/WEB-INF/views/template/js-libs.jsp" %>
    <title>In curs de dezvoltare</title>
</head>

<body>

<%@include file="/WEB-INF/views/template/nav.jsp" %>
<div class="inner-wr container">
    <section class="row">
        <div class="col-xs-10 col-lg-offset-1">
            <h3 class="section-title text-center">Ultimele Știri</h3>
            <div>
                <a href="<spring:url value="addNews"/>" class="btn btn-info">Adauga noutati</a>
            </div>
            <div class="owl-carousels owl-carousel">
                <c:forEach items="${news}" var="n">
                    <div>
                        <a href="<spring:url value="editNews/${n.id}"/>" class="btn btn-info">Editează noutatea</a>
                        <a href="<spring:url value="deleteNews/${n.id}"/>" class="btn btn-info">Sterge nouatatea</a>
                        <h1><c:out value="${n.title}"></c:out></h1>
                        <div><c:out value="${n.info}"></c:out>
                            <div><c:out value="${n.dateCreated}"></c:out></div>
                        </div>
                        <div><img width="200" height="200" src="<c:url value="/resources/images/news/${n.id}.jpg" />"
                                  alt=""></div>
                    </div>
                </c:forEach>
            </div>
        </div>
    </section>
</div>
<%@include file="/WEB-INF/views/template/footer.jsp" %>
</body>
</html>
