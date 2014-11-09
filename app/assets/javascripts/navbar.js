$(document).ready(function(){
	$('#hamburger').on('click', function(){
		$('navbar').toggleClass('active');
		$('.wrapper').toggleClass('active');
	})
})

	// L.mapbox.accessToken = 'pk.eyJ1IjoicGFtLSIsImEiOiJNT09NSzgwIn0.AWl1AY_kO1HMnFHwxb9mww';
	// // geocoder = L.mapbo
	// map = L.mapbox.map('map', 'pam-.jmeb29bh');