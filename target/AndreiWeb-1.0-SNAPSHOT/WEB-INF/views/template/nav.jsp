<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: andrei
  Date: 21.04.2016
  Time: 17:21
  To change this template use File | Settings | File Templates.
--%>
<div class="row">
    <div id="ex1" class="wr-header-detail col-xs-12">

        <c:if test="${pageContext.request.userPrincipal.name != null}" >
            <span class="col-xs-3"><a>Bun venit: ${pageContext.request.userPrincipal.name} </a> </span>
            <span class="col-xs-3"><a href="<c:url value="/j_spring_security_logout"/> ">Logout </a> </span>
        </c:if>
        <%--<c:if test="${pageContext.request.userPrincipal.name != 'admin'}" >--%>
            <%--<span class="col-xs-3"><a href="<c:url value="/apointmentList"/> ">Programari </a> </span>--%>
        <%--</c:if>--%>
        <c:if test="${pageContext.request.userPrincipal.name == 'admin'}" >
            <span class="col-xs-3"><a href="<c:url value="/admin"/> ">Admin</a> </span>
        </c:if>
        <c:if test="${not empty pageContext.request.userPrincipal}">

            <c:if test="${pageContext.request.isUserInRole('DOCTOR')}">

                User ${pageContext.request.userPrincipal.name} in Doctor Group
                <span class="col-xs-3"><a href="<c:url value="/CalendarExtended"/> ">Calendar</a> </span>
            </c:if>

        </c:if>
    </div>
    <nav class="menu-header">
        <a href="<c:url value="/"/>"  class="col-xs-3"><i class="fa fa-home fa-fw"></i> Acasa</a>
        <a href="#ex2" class="col-xs-3"><i class="fa fa-calendar fa-fw"></i> Orar</a>
        <a href="#ex3" class="col-xs-3"><i class="fa fa-user-md" aria-hidden="true"></i> Medici</a>
        <a href="#ex4" class="col-xs-3"><i class="fa fa-user fa-fw" aria-hidden="true"></i> Contul meu</a>
    </nav>
</div>