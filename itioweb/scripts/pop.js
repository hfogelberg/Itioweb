function showPop(file){
	$("#backgroundPopup").css({
		"opacity": "0.7",
		"display": "block"});
	$("#backgroundPopup").fadeIn("slow");
	
	var windowWidth = document.documentElement.clientWidth;
	var windowHeight = document.documentElement.clientHeight;
	var popupHeight = $("#popObject").height();
	var popupWidth = $("#popObject").width();
	$("#popObject").css({
		"display": "block",
		"position": "absolute",
		"top": windowHeight/2-popupHeight/2,
		"left": windowWidth/2-popupWidth/2
	});

	$("#popContent").load(file);

	$("#popObject").fadeIn("slow");
}

$(document).ready(function(){
	$("#about_us").click(function(){
		showPop("about_us.html");
	});
	
	$("#iphone").click(function(){
		showPop("iphone.html");
	});
	
	$("#our_services").click(function(){
		showPop("our_services.html");
	});
	
	$("#about_iduf").click(function(){
		showPop("about_iduf.html");
	});
	
	$("#contact").click(function(){
		showPop("contact.html");
	});
	
	
	$("#popClose").click(function(){
		$("#popObject").fadeOut("slow");
		$("#backgroundPopup").fadeOut("Slow");
	});
	
});
