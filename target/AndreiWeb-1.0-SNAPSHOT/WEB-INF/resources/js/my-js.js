$(document).ready(function () {
    $(".owl-carousels").owlCarousel({
        loop: false,
        animateOut: 'fadeOut',
        margin: 10,
        autoplay: true,
        autoPlaySpeed: 5000,
        autoPlayTimeout: 5000,
        autoplayHoverPause: true,
        responsiveClass: true,
        responsive: {
            0: {
                items: 1,
                nav: true
            },
            600: {
                items: 1,
                nav: false
            },
            1000: {
                items: 1,
                nav: true,
                loop: true
            }
        }
    });
    $(".doctor-slider").owlCarousel({
        loop: true,
        margin: 30,
        autoplay: true,
        autoPlaySpeed: 5000,
        autoPlayTimeout: 5000,
        autoplayHoverPause: true,
        responsiveClass: true,
        responsive: {
            0: {
                items: 1,
                nav: true
            },
            600: {
                items: 2,
                nav: false
            },
            1000: {
                items: 3,
                nav: true,
                loop: true
            }
        }
    });
    $(".service-slider").owlCarousel({
        loop: true,
        margin: 10,
        autoplay: true,
        autoPlaySpeed: 5000,
        autoPlayTimeout: 5000,
        autoplayHoverPause: true,
        responsiveClass: true,
        responsive: {
            0: {
                items: 1,
                nav: true
            },
            600: {
                items: 2,
                nav: false
            },
            1000: {
                items: 4,
                nav: true,
                loop: true
            }
        }
    });

    $('.wr-img').hover(function () {

        $(this).find('.img-overlay').toggle(100);
    });
    //Eakori
    var options = {
        offset: 90
    };

    //gmaps-end----------
    function initialize() {
        var myLatLng = {
            lat: 47.753650,
            lng: 27.921295
        };
        var mapProp = {
            center: new google.maps.LatLng(47.75440, 27.921315),
            zoom: 16,
            scrollwheel: false,
            mapTypeId: google.maps.MapTypeId.ROADMAP
        };
        var map = new google.maps.Map(document.getElementById("map"), mapProp);
        var marker = new google.maps.Marker({
            position: myLatLng,
            map: map,
            title: 'More cookies!!!'
        });
    }

    google.maps.event.addDomListener(window, 'load', initialize);

});