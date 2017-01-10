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
<!DOCTYPE html>
<html lang="ro">
<meta http-equiv="content-type" content="text/html; charset=UTF-8" />
<meta name="description" content="Serviciu pentru Programarea la medic">
<meta name="keywords" content="Dinti, programare, dental, stomatologie ">
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="author" content="Andrei Rotari">
<link rel="shortcut icon" href="<c:url value="/resources/images/favicon.ico" />" type="image/x-icon">
<head>
    <%@include file="/WEB-INF/views/template/headering.jsp"%>
    <%@include file="/WEB-INF/views/template/js-libs.jsp"%>
    <title>In curs de dezvoltare</title>
</head>

<body>

<%@include file="/WEB-INF/views/template/nav.jsp"%>
<div class="inner-wr container">
    <section class="row">
        <div class="col-xs-10 col-lg-offset-1">
            <h3 class="section-title text-center">Ultimele Știri</h3>
            <div class="owl-carousels owl-carousel">
                <div> <img src="<c:url value="/resources/images/slide-2.png" />"/></div>
                <div> <img src="<c:url value="/resources/images/slide-3.jpg" />"/> </div>
                <div>
                    <h1>Ultimele noutăți</h1>
                <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent semper sit amet urna ut posuere.
                    Phasellus in risus varius, consequat felis at, luctus turpis. Curabitur aliquet nec ante vel volutpat.
                    Nunc venenatis aliquam varius. Quisque egestas purus libero, a sollicitudin neque tincidunt vel.
                    Fusce viverra gravida ligula vel finibus. Aliquam ut euismod orci, ac dapibus urna. Proin mollis est ante.
                    Donec blandit, justo et tempus interdum, risus tortor pulvinar leo, quis ultricies diam sapien iaculis ante.
                    Donec ac ultricies urna. Integer tempus ligula orci, quis tincidunt ligula vestibulum quis.
                    Vestibulum ac velit dapibus augue vulputate vulputate ut ac arcu. Morbi mi justo, pharetra vel vulputate nec,
                    dignissim scelerisque dui. Aliquam feugiat tellus a velit porta volutpat. Mauris pellentesque accumsan sapien non pharetra.
                    Proin vulputate dapibus ligula sagittis aliquet. Ut congue lorem malesuada, suscipit magna ac, placerat magna.
                    Pellentesque non pellentesque eros. Pellentesque interdum erat sed tortor congue aliquet.
                    Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas.
                    Vivamus dictum dolor non dapibus vehicula. Sed volutpat tortor eget enim ornare, nec vestibulum lacus finibus.
                    Integer ultricies malesuada eros ac suscipit. Duis et tempus sapien. Etiam ullamcorper egestas mi nec dictum.
                    Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos.
                    Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos.
                    Proin id turpis in felis hendrerit cursus. Suspendisse dapibus est a ultricies rhoncus.
                    Suspendisse vitae nulla nec nisi gravida sagittis. Donec eget commodo dui.
                    Maecenas sagittis metus sapien, quis volutpat mauris convallis ac.</p>
                </div>
            </div>
        </div>
    </section>
    <section class="text-center">
        <h3 class="section-title text-center">Lista Medicilor</h3>
        <div class="doctor-slider owl-carousel">
            <c:forEach items="${doctors}" var="doctor">
                <div class="about-doctor">
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
        </div>
    </section>
</div>
    <section class="wr-servicii container">
        <h3 class="text-center section-title">Lista Serviciilor</h3>
        <div class="service-slider owl-carousel">
            <c:forEach items="${serviciuList}" var="serviciu">
                <div class="wr-serviciu">
                    <div class="serviciu-name">${serviciu.name}</div>
                    <div class="serviciu-about">${serviciu.about}</div>
                    <div class="serviciu-price">Preț: ${serviciu.price} lei.</div>
                </div>
            </c:forEach>
        </div>
    </section>
<div class="bg-4 text-center container">
    <div id="map"></div>
</div>
    <%@include file="/WEB-INF/views/template/footer.jsp"%>
<script>
    $( document ).ready(function() {
//        $.get( "/calendar", function( data ) {
//            $( "#getCalendar" ).html( data );
//            //alert( "Load was performed." );
//        });

    });
</script>


</body>
</html>
