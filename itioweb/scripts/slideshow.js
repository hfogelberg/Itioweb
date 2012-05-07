$(document).ready(function() {
	setTimeout(slideShow, 10000);	
});


function slideShow()
{
		var numberOfPics = $('#photos > img').length - 1;
		var current = $('#photos .show');
		current.hide().removeClass('show');
		img1 = Math.floor(Math.random() * numberOfPics) + 1;
		img2 = Math.floor(Math.random() * numberOfPics) + 1;
		img3 = Math.floor(Math.random() * numberOfPics) + 1;
		img4 = Math.floor(Math.random() * numberOfPics) + 1;
		
		if (img1<=0){
			img1=0
		}
		
		if (img2<=0){
			img2=0
		}
		
		if (img3<=0){
			img3=0
		}
		 
		if (img4<=0){
			img4=0
		}
		
		if(img1>numberOfPics){
			img1=numberOfPics
		}
		
		if(img2>numberOfPics){
			img2=numberOfPics
		}
		
		if(img3>numberOfPics){
			img3=numberOfPics
		}
		
		if(img4>numberOfPics){
			img4=numberOfPics
		}
		
		$('#photos > img').eq(img1).addClass('show').fadeIn('slow');
		$('#photos > img').eq(img2).addClass('show').fadeIn('slow');
		$('#photos > img').eq(img3).addClass('show').fadeIn('slow');
		$('#photos > img').eq(img4).addClass('show').fadeIn('slow');
}