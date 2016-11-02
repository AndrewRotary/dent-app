<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: andrei
  Date: 19.04.2016
  Time: 10:17
  To change this template use File | Settings | File Templates.
--%>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<%@ page contentType="text/html;charset=UTF-8" language="java" %>

        <div class="main container-fluid">
            <section class="text-center">
                <h1 class="h1-main">Medicii Oficiului "Dinti Sanatosi SRL"</h1>
                <c:forEach items="${doctors}" var="doctor">
                <div class="about-doctor col-xs-3">
                    <div class="wr-img">
                        <img src="<c:url value="/resources/images/${doctor.doctorId}.png" /> " alt="image"/>
                        <div class="img-overlay">
                            <span class="phone">Tl: ${doctor.doctorPhone}</span>
                            <span class="phone">Email: ${doctor.doctorEmail}</span>
                            <a href="#"><i class="fa fa-facebook fa-fw"></i></a>
                            <a href="#"><i class="fa fa-skype fa-fw"></i></a>
                        </div>
                    </div>
                    <article>
                        <h4>${doctor.doctorName} ${doctor.doctorSurname}</h4>
                        <p>Reference site about Lorem Ipsum, giving information on its origins, as well as a random Lipsum generator.</p>
                        <span>${doctor.doctorDegree}</span>
                    </article>
                </div>
        </c:forEach>
    </section>
</div>
