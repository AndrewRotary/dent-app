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
        <c:if test="${pageContext.request.userPrincipal.name == 'admin'}" >
            <span class="col-sm-3 col-xs-6"><a href="<c:url value="/admin"/> ">Admin</a> </span>
        </c:if>
    </div>
    <nav class="menu-header">
        <a href="<c:url value="/"/>"  class="col-xs-3"><i class="fa fa-home fa-fw"></i> Acasa</a>
        <c:choose>
            <c:when test="${pageContext.request.isUserInRole('ROLE_DOCTOR')}"> <a href="<c:url value="/doctor/CalendarExtended"/>" class="col-xs-3"><i class="fa fa-calendar fa-fw"></i> Orar</a></c:when>
            <%--<c:when test="${pageContext.request.isUserInRole('ROLE_USER')}"><a href="<c:url value="/calendar"/>" class="col-xs-3"><i class="fa fa-calendar fa-fw"></i>Programare</a></c:when>--%>
            <c:otherwise><a href="<c:url value="/calendar"/>" class="col-xs-3"><i class="fa fa-calendar fa-fw"></i> Programare</a></c:otherwise>
        </c:choose>
        <a href="<c:url value="/soon"/>" class="col-xs-3"><i class="fa fa-user-md" aria-hidden="true"></i> Medici</a>
        <c:choose>
            <c:when test="${pageContext.request.userPrincipal.name != null}"> <a href="<c:url value="/soon"/>" class="col-xs-3"><i class="fa fa-user fa-fw" aria-hidden="true"></i> ${pageContext.request.userPrincipal.name} </a></c:when>
            <c:otherwise> <a href="<c:url value="/soon"/>" class="col-xs-3"><i class="fa fa-user fa-fw" aria-hidden="true"></i> </a></c:otherwise>
        </c:choose>
    </nav>
</div>