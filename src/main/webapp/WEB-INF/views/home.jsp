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
<meta charset="UTF-8">
<meta name="description" content="Serviciu pentru Programarea la medic">
<meta name="keywords" content="Dinti, programare, dental, stomatologie ">

<head>
    <%@include file="/WEB-INF/views/template/headering.jsp"%>
    <%@include file="/WEB-INF/views/template/footer.jsp"%>
    <title>Totul se face repede si usoara</title>
</head>

<body>
<header>
    <div class="container-fluid">
        <%@include file="/WEB-INF/views/template/nav.jsp"%>
        <div class="row">
            <div class="wr-slider">
                <ul class="bxslider">
                    <li>
                        <div class="content x2-width">
                            <div class="frame-white small-pading">
                                <p>Informatii</p>
                                <span>Este important ca toate tratamentele dentare să fie efectuate de medici care fac parte din aceeași echipă. Astfel, la "Dinti Sanatosi SRL", oferim un set complet de servicii medicale prin care răspundem oricărui tip de nevoie stomatologică, fie ea de natură estetică sau funcțională.</span>
                            </div>
                        </div>
                        <img class="img-responsive " src="<a:url value="/resources/images/paralax-3.jpg" />"alt="slide1"/>
                    </li>
                    <li>
                        <div class="content x2-width large">
                            <div class="frame-white small-pading">
                                <p id="txt-cooky">Gaseste prajituri pentru mine =)</p>
                                <div class="drag-drop col-xs-8">
                                    <div class="wr-teeth row">
                                        <div id="droppable" class="mouth-open"></div>
                                    </div>
                                </div>
                                <div class="col-xs-4">
                                    <div id="draggable" class="cokie-1"></div>
                                </div>
                            </div>
                        </div>
                        <img class="img-responsive" src="<a:url value="/resources/images/slide-1.jpg" />" alt="slide-2"/>
                    </li>
                    <li>
                        <div class="content large">
                            <div class="frame-white">
                                <p>Pacienti Multumiti</p>
                                <iframe src="https://www.youtube.com/embed/10r9ozshGVE" allowfullscreen>
                                </iframe>
                            </div>
                        </div>
                        <img class="img-responsive" src="<a:url value="/resources/images/paralax.jpg" />" alt="slide-3"/>
                    </li>
                </ul>
                <div class="outside">
                    <p><span id="slider-prev"></span><span id="slider-next"></span></p>
                </div>
                <div class="nav-log-reg">
                    <!-- Modal Login and Modal Register -->

                    <button type="button" class="log col-xs-6 choose-login" id="login">Logare <i class="fa fa-sign-in" aria-hidden="true"></i></button>
                    <button type="button" id="register" class="reg col-xs-6 choose-register">Inregistrare <i class="fa fa-user-plus" aria-hidden="true"></i></button>
                </div>
            </div>
            <!-- The Modal REgister -->
            <div id="register-modal" class="modal">
                <!-- Modal content -->
                <div class="modal-content">
                    <div class="close"><i class="fa fa-times fa-fw"></i> Inchide</div>
                    <form class="form-reg" id="register-client">
                        <div class="form-group">
                            <input class="form-control" type="text" placeholder="Nume"/>
                        </div>
                        <div class="form-group">
                            <input class="form-control" type="text" placeholder="Email"/>
                        </div>
                        <div class="form-group">
                            <input class="form-control" type="text" placeholder="Parola"/>
                        </div>
                        <button type="submit">Inregistrare</button>
                    </form>
                    <%--<%@include file="/WEB-INF/views/registerClient.jsp"%>--%>
                    <c:if test="${not empty msg}">
                        <div class="msg"></div>
                    </c:if>

                    <form class="form-log" name="loginForm" action="<c:url value="/j_spring_security_check"/>" method="post">
                        <c:if test="${not empty error}">
                            <div class="error" style="collor: #ff0766">${error}</div>
                        </c:if>
                        <div class="form-group">
                            <input class="form-control" type="text" name="username"  placeholder="Nume"/>
                        </div>
                        <div class="form-group">
                            <input class="form-control" type="password" name="password" placeholder="Parola"/>
                        </div>
                        <input type="submit" value="Logare" class="btn-log-reg">
                        <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>
                    </form>
                </div>
            </div>
        </div>
    </div>
</header>
<div class="main container-fluid">
    <section class="text-center row" id="userList">
        <h1 class="h1-main">Se incarca..</h1>

    </section>
    <section class="row wr-make-appointment">
        <div class="container">
            <h2 class="h1-main">Programeazate</h2>
            <form>
                <div class="col-xs-3 clinick-news">
                    <h3>Informatii</h3>
                    <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. sunt et, reprehenderit asperiores!</p>
                </div>
                <div class="col-xs-3 opening-hours">
                    <h3>Orele de lucru</h3>
                    <table>
                        <tr>
                            <td>Luni - Vineri</td>
                            <td>8.00 - 17.00</td>
                        </tr>
                        <tr>
                            <td>Simbata</td>
                            <td>9.30 - 17.30</td>
                        </tr>
                        <tr>
                            <td>Duminica</td>
                            <td>9.30 - 15.00</td>
                        </tr>
                    </table>
                </div>
                <div class="form-group col-xs-2">
                    <input type="text" placeholder="Numele"/>
                    <input type="date">
                </div>
                <div class="form-group col-xs-2">
                    <input type="text" placeholder="Email"/>
                    <select>
                        <option>Medic</option>
                    </select>
                </div>
                <div class="form-group col-xs-2">
                    <input type="text" placeholder="Nr Tel"/>
                    <button type="submit">Send</button>
                </div>
            </form>
        </div>
    </section>
    <div class="container">
        <div class="row">
            <section class="wr-services">
                <h3 class="h1-main">Serviciile prestate de "Dinti sanatosi SRL"</h3>
                <div class="col-xs-4">
                    <div id="ex3" class="one-service">
                        <button id="overrlay-open1"><i class="fa fa-check-circle-o"></i> Albirea a dinților</button>
                    </div>
                    <div class="one-service">
                        <button id="overrlay-open2"><i class="fa fa-check-circle-o"></i> Consultatie</button>
                    </div>
                    <div class="one-service">
                        <button id="overrlay-open3"><i class="fa fa-check-circle-o"></i> ENDODONȚIE</button>
                    </div>
                    <div class="one-service">
                        <button id="overrlay-open4"><i class="fa fa-check-circle-o"></i> PROTETICĂ DENTARĂ</button>
                    </div>
                </div>
                <div class="col-xs-8 info-service">
                    <div id="info-service1">
                        Prin albirea dinților se poate obține un zâmbet alb și strălucitor. Sunt mai multe metode de albire, însă tehnica cea mai recomandată de medicii stomatologi este albirea profesională. Fără îndoială, aceasta este cea mai rapidă și mai eficientă metodă.
                    </div>
                    <div id="info-service2">
                        Consultația reprezintă cel mai important aspect în medicina dentară, pe lângă tratamentele de specialitate. De aceea, fiecare consultație este realizată cu maximum de responsabilitate și respect de către membrii echipei medicale a cabinetului nostru. Fiecare pacient este diferit, la fel cum și tratamentele trebuie pliate pe nevoile individuale ale fiecărei persoane care ne calcă pragul. Tocmai din acest motiv, ascultăm și înțelegem nevoile pacienților și stabilim un plan de tratament corect după dorințele și nevoile acestora.
                    </div>
                    <div id="info-service3">
                        Dacă o simplă carie dentară nu este tratată la timp, se ajunge ca aceasta să avanseze așa de mult încât să afecteze pulpa dentară (nervul). Acest fenomen are ca rezultat provocarea durerilor dentare de multe ori insuportabile. În urma acestora, deseori pacienții solicită extracția dintelui în cauză, fără a ține cont de consecințele pe care le implică pierderea chiar și doar a unui singur dinte. Printr-un tratament corespunzător al canalelor radiculare (tratament endodontic), dintele afectat poate fi salvat și apoi restaurat prin mai multe metode, în funcție de gradul de distrucție coronară provocat de procesul carios. În timpul efectuării tratamentelor endodontice, utilizarea sistemului de digă este esențială .
                    </div>
                    <div id="info-service4">
                        Protetica este o ramură a stomatologiei care oferă soluții de înlocuire (protezare) a substanței dentare pierdute parțial (prin carii avansate, fracturi etc) sau chiar total (prin extracții). Lucrările protetice pot fi fixe, atunci când mai există dinți “de legătură”, astfel încât să se poată realiza lucrări ce vor fi cimentate pe dinții vecini spațiului edentat, sau mobile, respectiv protezele dentare. Aceste lucrări sunt realizate în laboratorul de tehnică dentară și necesită mai multe etape până la finalizarea lor. Materialele utilizate sunt diverse, în funcție de indicația terapeutică, dar și de dorințele pacientului (vorbim de lucrări de metal, metalo-compozite, metalo- ceramice, ceramică pe zirconiu sau chiar integral ceramice).
                    </div>
                </div>
            </section>
        </div>
    </div>

</div>
<div class="container-fluid" id="getCalendar">
Se Incarca
</div>

<div id="map"></div>
<div class="wr-header-detail">
    <span class="col-xs-4"><i class="fa fa-map-marker fa-fw"></i> Puskina 44 / 22</span>
    <span class="col-xs-4"><i class="fa fa-phone fa-fw"></i> (323) 7 22 33 </span>
    <span class="col-xs-4"><i class="fa fa-envelope fa-fw"></i> Medical@gmail.com</span>
</div>
<meta name="author" content="Andrei Rotari">


<script>
    //alert( "Load was performed. 1" );
    $( document ).ready(function() {
        //alert( "Load was performed. 2" );
        $.get( "/DentalApointment/userList", function( data ) {
            $( "#userList" ).html( data );
            //alert( "Load was performed." );
        });
        $.get( "/DentalApointment/calendar", function( data ) {
            $( "#getCalendar" ).html( data );
            //alert( "Load was performed." );
        });
        $.get( "/DentalApointment/register", function( data ) {
            $( "#register-client" ).html( data );
            //alert( "Load was performed." );
        });
    });
</script>