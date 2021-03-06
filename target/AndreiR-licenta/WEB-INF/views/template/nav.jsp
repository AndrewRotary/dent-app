<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: andrei
  Date: 21.04.2016
  Time: 17:21
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<header class="container inner-wr">
    <h1 class="text-center col-xs-12">Dinți sănătoși SRL</h1>
</header>
<div class="bg-white container">
    <nav class="my-nav navbar navbar-inverse row">
        <div class="navbar-header">
            <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar"
                    aria-expanded="false" aria-controls="navbar">
                <span class="sr-only"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
            </button>
        </div>
        <div id="navbar" class="navbar-collapse collapse">
            <ul class="nav navbar-nav">
                <li><a href="<c:url value="/"/>" class="">Acasa</a></li>
                <c:if test="${pageContext.request.userPrincipal.name == 'admin'}">
                    <li><a href="<c:url value="/admin"/> ">Admin Panel</a></li>
                </c:if>
                <li>
                    <c:choose>
                        <c:when test="${pageContext.request.isUserInRole('ROLE_DOCTOR')}"><a
                                href="<c:url value="/doctor"/>" class="">Administrare</a></c:when>
                        <c:otherwise><a href="<c:url value="/soon"/>">Contact</a></c:otherwise>
                    </c:choose>
                </li>
            </ul>
            <ul class="nav navbar-nav navbar-right">
                <li>
                    <c:choose>
                        <c:when test="${pageContext.request.userPrincipal.name != null}"> <a
                                href="<c:url value="/soon"/>" class=""><span
                                class="glyphicon glyphicon-user"></span> ${pageContext.request.userPrincipal.name} </a></c:when>
                        <c:otherwise> <a href="<c:url value="/soon"/>" class=""> </a></c:otherwise>
                    </c:choose>
                </li>
                <li>
                    <c:choose>
                    <c:when test="${pageContext.request.userPrincipal.name != null}">
                <li><a href="<c:url value="/j_spring_security_logout"/>" class="">Ieșire <i class="fa fa-sign-out"
                                                                                            aria-hidden="true"></i></a>
                </li>
                </c:when>
                <c:otherwise>
                    <li class="dropdown">
                        <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true"
                           aria-expanded="false"><span class="glyphicon glyphicon-log-in"></span> Utilizator<span
                                class="caret"></span></a>
                        <ul class="dropdown-menu">
                            <li><a href="<c:url value="/login"/>">Autentificare</a>
                            </li>
                            <li><a href="<c:url value="/register"/>" class="">Înregistrare </a></li>
                        </ul>
                    </li>
                </c:otherwise>
                </c:choose>
            </ul>
        </div><!--/.nav-collapse -->

    </nav>
</div>
