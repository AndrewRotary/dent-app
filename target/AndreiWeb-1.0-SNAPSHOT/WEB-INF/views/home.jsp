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
    <%@include file="/WEB-INF/views/template/js-libs.jsp"%>
    <title>In curs de dezvoltare</title>
</head>

<body>

<%@include file="/WEB-INF/views/template/nav.jsp"%>
<div class="inner-wr container">
    <div class="col-xs-10 col-lg-offset-1">
        <div class="owl-carousel">
            <div> <img src="<c:url value="/resources/images/slide-2.png" />"/></div>
            <div> <img src="<c:url value="/resources/images/slide-3.jpg" />"/> </div>
            <div> Your Content </div>
        </div>
    </div>
    <section class="text-center row" id="userList">
      <div class="wr-loader">
          <div class="loader"></div>
      </div>
    </section>
    <div class="">
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
                <p> Protetica este o ramură a stomatologiei care oferă soluții de înlocuire (protezare) a substanței dentare pierdute parțial (prin carii avansate, fracturi etc) sau chiar total (prin extracții). Lucrările protetice pot fi fixe, atunci când mai există dinți “de legătură”, astfel încât să se poată realiza lucrări ce vor fi cimentate pe dinții vecini spațiului edentat, sau mobile, respectiv protezele dentare. Aceste lucrări sunt realizate în laboratorul de tehnică dentară și necesită mai multe etape până la finalizarea lor. Materialele utilizate sunt diverse, în funcție de indicația terapeutică, dar și de dorințele pacientului (vorbim de lucrări de metal, metalo-compozite, metalo- ceramice, ceramică pe zirconiu sau chiar integral ceramice).
                </p>
            </div>
        </div>
    </div>
    </div>

    <%@include file="/WEB-INF/views/template/footer.jsp"%>

<script>
    $( document ).ready(function() {
        //alert( "Load was performed. 2" );
        $.get( "/userList", function( data ) {
            $( "#userList" ).html( data );
        });
//        $.get( "/calendar", function( data ) {
//            $( "#getCalendar" ).html( data );
//            //alert( "Load was performed." );
//        });

    });
</script>


</body>
</html>
