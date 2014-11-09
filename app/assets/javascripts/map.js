function mapMaker() {
	console.log('start')
	L.mapbox.accessToken = 'pk.eyJ1IjoicGFtLSIsImEiOiJNT09NSzgwIn0.AWl1AY_kO1HMnFHwxb9mww';
	// geocoder = L.mapbo
	map = L.mapbox.map('map', 'pam-.jmeb29bh');
	console.log('end')
}

window.onload = mapMaker;