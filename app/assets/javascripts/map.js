function coffeeFinder() {
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
		// show coffee shops in the area 
		// if click can look at people who added that coffee shop for potential meetup spot
		//can choose to save that spot as well when visits coffee's page??
		$.post('/search', {location: location}, function(data){console.log(data)})


	})
}