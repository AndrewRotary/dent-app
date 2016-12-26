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

<head>
    <%@include file="/WEB-INF/views/template/headering.jsp"%>
    <%@include file="/WEB-INF/views/template/footer.jsp"%>
    <title>In curs de dezvoltare</title>
</head>

<body>
<header>

        <%@include file="/WEB-INF/views/template/nav.jsp"%>
        <div id="myCarousel" class="carousel slide" data-ride="carousel">
            <!-- Indicators -->
            <ol class="carousel-indicators">
                <li data-target="#myCarousel" data-slide-to="0" class=""></li>
                <li data-target="#myCarousel" data-slide-to="1" class=""></li>
                <li data-target="#myCarousel" data-slide-to="2" class="active"></li>
            </ol>
            <div class="carousel-inner" role="listbox">
                <div class="item">
                    <img class="first-slide" src="<c:url value="/resources/images/slide-1.jpg" />" alt="First slide">
                    <div class="container">
                        <div class="carousel-caption">
                            <h1>Example headline.</h1>
                            <p>Note: If you're viewing this page via a <code>file://</code> URL, the "next" and "previous" Glyphicon buttons on the left and right might not load/display properly due to web browser security rules.</p>
                            <p><a class="btn btn-lg btn-primary" href="#" role="button">Sign up today</a></p>
                        </div>
                    </div>
                </div>
                <div class="item">
                    <img class="second-slide" src="<c:url value="/resources/images/paralax.jpg" />" alt="Second slide">
                    <div class="container">
                        <div class="carousel-caption">
                            <h1>Another example headline.</h1>
                            <p>Cras justo odio, dapibus ac facilisis in, egestas eget quam. Donec id elit non mi porta gravida at eget metus. Nullam id dolor id nibh ultricies vehicula ut id elit.</p>
                            <p><a class="btn btn-lg btn-primary" href="#" role="button">Learn more</a></p>
                        </div>
                    </div>
                </div>
                <div class="item active">
                    <img class="third-slide" src="<c:url value="/resources/images/paralax-3.jpg" />" alt="Third slide">
                    <div class="container">
                        <div class="carousel-caption">
                            <h1>One more for good measure.</h1>
                            <p>Cras justo odio, dapibus ac facilisis in, egestas eget quam. Donec id elit non mi porta gravida at eget metus. Nullam id dolor id nibh ultricies vehicula ut id elit.</p>
                            <p><a class="btn btn-lg btn-primary" href="#" role="button">Browse gallery</a></p>
                        </div>
                    </div>
                </div>
            </div>
            <a class="left carousel-control" href="#myCarousel" role="button" data-slide="prev">
                <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
                <span class="sr-only">Previous</span>
            </a>
            <a class="right carousel-control" href="#myCarousel" role="button" data-slide="next">
                <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
                <span class="sr-only">Next</span>
            </a>

        </div>

</header>
<div class="main container-fluid">
    <section class="text-center row" id="userList">
      <div class="wr-loader">
          <div class="loader"></div>
      </div>
    </section>
    <div class="container">
        <h2>Serviciile prestate de "Dinți sănătoși SRL"</h2>
        <p>To make the tabs toggleable, add the data-toggle="pill" attribute to each link. Then add a .tab-pane class with a unique ID for every tab and wrap them inside a div element with class .tab-content.</p>
        <ul class="nav nav-tabs">
            <li class="active"><a data-toggle="pill" href="#home"> Albirea a dinților</a></li>
            <li><a data-toggle="pill" href="#menu1">Consultație</a></li>
            <li><a data-toggle="pill" href="#menu2">ENDODONȚIE</a></li>
            <li><a data-toggle="pill" href="#menu3">PROTETICĂ DENTARĂ</a></li>
            <li><a data-toggle="pill" href="#menu1">Consultație</a></li>
            <li><a data-toggle="pill" href="#menu2">ENDODONȚIE</a></li>
            <li><a data-toggle="pill" href="#menu3">PROTETICĂ DENTARĂ</a></li>
            <li><a data-toggle="pill" href="#menu1">Consultație</a></li>
            <li><a data-toggle="pill" href="#menu2">ENDODONȚIE</a></li>
            <li><a data-toggle="pill" href="#menu3">PROTETICĂ DENTARĂ</a></li>
            <li><a data-toggle="pill" href="#menu1">Consultație</a></li>
            <li><a data-toggle="pill" href="#menu2">ENDODONȚIE</a></li>
            <li><a data-toggle="pill" href="#menu3">PROTETICĂ DENTARĂ</a></li>
        </ul>

        <div class="tab-content">
            <div id="home" class="tab-pane fade in active">
                <h3>Albirea a dinților</h3>
                <p>Prin albirea dinților se poate obține un zâmbet alb și strălucitor. Sunt mai multe metode de albire, însă tehnica cea mai recomandată de medicii stomatologi este albirea profesională. Fără îndoială, aceasta este cea mai rapidă și mai eficientă metodă.
                </p>
            </div>
            <div id="menu1" class="tab-pane fade">
                <h3>Consultație</h3>
                <p>    Consultația reprezintă cel mai important aspect în medicina dentară, pe lângă tratamentele de specialitate. De aceea, fiecare consultație este realizată cu maximum de responsabilitate și respect de către membrii echipei medicale a cabinetului nostru. Fiecare pacient este diferit, la fel cum și tratamentele trebuie pliate pe nevoile individuale ale fiecărei persoane care ne calcă pragul. Tocmai din acest motiv, ascultăm și înțelegem nevoile pacienților și stabilim un plan de tratament corect după dorințele și nevoile acestora.
                </p>
            </div>
            <div id="menu2" class="tab-pane fade">
                <h3>ENDODONȚIE</h3>
                <p>    Dacă o simplă carie dentară nu este tratată la timp, se ajunge ca aceasta să avanseze așa de mult încât să afecteze pulpa dentară (nervul). Acest fenomen are ca rezultat provocarea durerilor dentare de multe ori insuportabile. În urma acestora, deseori pacienții solicită extracția dintelui în cauză, fără a ține cont de consecințele pe care le implică pierderea chiar și doar a unui singur dinte. Printr-un tratament corespunzător al canalelor radiculare (tratament endodontic), dintele afectat poate fi salvat și apoi restaurat prin mai multe metode, în funcție de gradul de distrucție coronară provocat de procesul carios. În timpul efectuării tratamentelor endodontice, utilizarea sistemului de digă este esențială .
                </p>
            </div>
            <div id="menu3" class="tab-pane fade">
                <h3>PROTETICĂ DENTARĂ</h3>
                <p>     Protetica este o ramură a stomatologiei care oferă soluții de înlocuire (protezare) a substanței dentare pierdute parțial (prin carii avansate, fracturi etc) sau chiar total (prin extracții). Lucrările protetice pot fi fixe, atunci când mai există dinți “de legătură”, astfel încât să se poată realiza lucrări ce vor fi cimentate pe dinții vecini spațiului edentat, sau mobile, respectiv protezele dentare. Aceste lucrări sunt realizate în laboratorul de tehnică dentară și necesită mai multe etape până la finalizarea lor. Materialele utilizate sunt diverse, în funcție de indicația terapeutică, dar și de dorințele pacientului (vorbim de lucrări de metal, metalo-compozite, metalo- ceramice, ceramică pe zirconiu sau chiar integral ceramice).
                </p>
            </div>
        </div>
    </div>

    </div>

<%--<div class="container-fluid" id="getCalendar">--%>
<%--</div>--%>

<div id="map"></div>
<div class="wr-header-detail">
    <span class="col-xs-4 col-tn-12"><i class="fa fa-map-marker fa-fw"></i> Puskina 44 / 22</span>
    <span class="col-xs-4 col-tn-12"><i class="fa fa-phone fa-fw"></i> (323) 7 22 33 </span>
    <span class="col-xs-4 col-tn-12"><i class="fa fa-envelope fa-fw"></i> Medical@gmail.com</span>
</div>



<script>
    //alert( "Load was performed. 1" );
    $( document ).ready(function() {
        //alert( "Load was performed. 2" );
        $.get( "/userList", function( data ) {
            $( "#userList" ).html( data );
            //alert( "Load was performed." );
        });
//        $.get( "/calendar", function( data ) {
//            $( "#getCalendar" ).html( data );
//            //alert( "Load was performed." );
//        });
//        $.get( "/register", function( data ) {
//            $( "#register-client" ).html( data );
//            //alert( "Load was performed." );
//        });
    });
</script>


</body>
</html>
