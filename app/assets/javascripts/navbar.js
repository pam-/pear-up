$(document).ready(function(){
	$('#hamburger').on('click', function(){
		$('navbar').toggleClass('active');
		$('.wrapper').toggleClass('active');
	});
	mapMaker();
})