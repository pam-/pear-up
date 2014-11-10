function mapMaker() {
	L.mapbox.accessToken = 'pk.eyJ1IjoicGFtLSIsImEiOiJNT09NSzgwIn0.AWl1AY_kO1HMnFHwxb9mww';
	geocoder = L.mapbox.geocoder('mapbox.places-v1');
	map = L.mapbox.map('map', 'pam-.jmeb29bh');

	$('form').on('submit', function(evt){
		evt.preventDefault();
		var location = $('input').val();
		geocoder.query(location, showMap);
		function showMap(err, data){
			if(data.lbounds) {
				map.fitBounds(data.lbounds);
			} else if (data.latlng) {
				map.setView([data.latlng[0], data.latlng[1], 15]);
			}
		};
		// for each element of the language array, show the users with that language and in the area
	})
}