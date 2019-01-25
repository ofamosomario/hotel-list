jQuery(window).on("load", function() {
	"use strict";

	/* -----------------------------------------
	 FlexSlider Init
	 ----------------------------------------- */
	var slider = jQuery('.flexslider');
	if ( slider.length ) {
		jQuery(".flexslider").flexslider({
			directionNav: true,
			controlNav: false,
			prevText: '',
			nextText: '',
			start: function(slider) {
				slider.removeClass('loading');
			}
		});
	}

});


function map_init(map_element) {
	'use strict';
	var myLatlng = new google.maps.LatLng(33.59,-80);
	var mapOptions = {
		zoom: 8,
		center: myLatlng,
		mapTypeId: google.maps.MapTypeId.ROADMAP
	};

	var map = new google.maps.Map(document.getElementById(map_element), mapOptions);

	var contentString = '<div id="content">Change it to whatever your want! <strong>HTML</strong> too!</div>';

	var infowindow = new google.maps.InfoWindow({
		content: contentString
	});

	var marker = new google.maps.Marker({
		position: myLatlng,
		map: map,
		title: 'Hello'
	});
	google.maps.event.addListener(marker, 'click', function() {
		infowindow.open(map,marker);
	});
}
