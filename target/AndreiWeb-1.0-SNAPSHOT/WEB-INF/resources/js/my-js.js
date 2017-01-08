$(document).ready(function () {
    $(".owl-carousel").owlCarousel({
        loop:true,
        margin:10,
        responsiveClass:true,
        responsive:{
            0:{
                items:1,
                nav:true
            },
            600:{
                items:1,
                nav:false
            },
            1000:{
                items:1,
                nav:true,
                loop:false
            }
        }
	});
	$('.wr-img').hover(function () {

			$(this).find('.img-overlay').toggle(100);
		})
		//Eakori
	var options = {
		offset: 90
	}

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