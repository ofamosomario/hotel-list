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

jQuery(document).ready(function($){

	// The datepickers must output the format yy/mm/dd
	// otherwise PHP's checkdate() fails.
	// Makes sure arrival date is not after departure date, and vice versa.
	$( ".datepicker[name='arrive']" ).datepicker({
		showOn: 'both',
		buttonText: '<i class="fa fa-calendar"></i>',
		dateFormat: 'yy/mm/dd',
		onSelect: function(dateText, dateObj){
			var minDate = new Date(dateObj.selectedYear, dateObj.selectedMonth, dateObj.selectedDay );
			minDate.setDate(minDate.getDate()+1);
			$( ".datepicker[name='depart']" ).datepicker("option", "minDate", minDate );
		}
	});

	$( ".datepicker[name='depart']" ).datepicker({
		showOn: 'both',
		buttonText: '<i class="fa fa-calendar"></i>',
		dateFormat: 'yy/mm/dd',
		onSelect: function(dateText, dateObj){
			//var maxDate = new Date(dateText);
			var maxDate = new Date(dateObj.selectedYear, dateObj.selectedMonth, dateObj.selectedDay );
			maxDate.setDate(maxDate.getDate()-1);
			$( ".datepicker[name='arrive']" ).datepicker("option", "maxDate", maxDate );
		}
	});

	/* -----------------------------------------
	 FlexSlider Init
	 ----------------------------------------- */
	if($('#carousel').length > 0){
		$('#carousel').flexslider({
			animation: "slide",
			controlNav: false,
			animationLoop: false,
			slideshow: false,
			itemWidth: 210,
			itemMargin: 5,
			asNavFor: '#slider',
			prevText: '',
			nextText: ''
		});
	}

	if($('#slider').length > 0){
		$('#slider').flexslider({
			controlNav: false,
			animationLoop: false,
			slideshow: false,
			sync: "#carousel",
			directionNav: false,
			prevText: '',
			nextText: ''
		});
	}

	if($(".testimonial-slider").length > 0){
		$(".testimonial-slider").flexslider({
			directionNav: false,
			direction: "vertical",
			controlNav: true
		});
	}

	//fix the resizing issue on the carousel
	var carousel_width = $("#slider").width();
	$("#carousel").css('width', carousel_width);

	$(window).resize(function() {
		var carousel_width = $("#slider").width();
		$("#carousel").css('width', carousel_width);

	});

	/* -----------------------------------------
	 Responsive Menus Init with mmenu
	 ----------------------------------------- */
	var maiNnav = $(".navigation"),
			mobileNav = $("#mobilemenu");
			mobileNav.append('<ul></ul>');
	var	mobileUl = $('#mobilemenu > ul');



	/* -----------------------------------------
	 Mobile Menu
	 ----------------------------------------- */
	maiNnav.each(function() {
		var content = $(this).html();
			mobileUl.append(content);
	});
	mobileUl.find('li').attr('id', '');
	mobileNav.mmenu({
		offCanvas: {
			position: 'top',
			zposition: 'front',
			isMenu: true
		}
	});

	/* -----------------------------------------
	 Main Navigation Init
	 ----------------------------------------- */
	$('.navigation').superfish({
		delay:       300,
		animation:   { opacity:'show', height:'show' },
		speed:       'fast',
		dropShadows: false
	});

	/* -----------------------------------------
	 Responsive Videos with fitVids
	 ----------------------------------------- */
	$('body').fitVids();


	/* -----------------------------------------
	 Dropkick
	 ----------------------------------------- */
	var select = $(".dk, .widget select");
	select.dropkick({
		theme: 'ci'
	});

	/* -----------------------------------------
	 Fancybox
	 ----------------------------------------- */
	$(".fancybox, a[data-rel^='fancybox[']").fancybox({
		fitToView: true,
		padding: 0,
		nextEffect: 'fade',
		prevEffect: 'fade'
	});

	/* -----------------------------------------
	 Top row visibility
	 ----------------------------------------- */
	var map_icon = $('#map-icon');
	map_icon.click(function(){
		var panel = $('#panel');
		panel.toggle();
		map_init('panel-map');
	});

	map_init('panel-map');

	/* -----------------------------------------
	 Page map
	 ----------------------------------------- */
	if ( $("#map").length ) {
		map_init('map');
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
