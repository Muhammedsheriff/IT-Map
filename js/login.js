$(document).ready(function(){
    $(".loading").fadeOut(4000,function(){
        $("body").css("overflow","auto")
    })
    
    
    
    $(".veen .rgstr-btn button").click(function(){
				$('.veen .wrapper').addClass('move');
				$('.body').css('background','#F27830');
				$(".veen .login-btn button").removeClass('active');
				$(this).addClass('active');

			});
			$(".veen .login-btn button").click(function(){
				$('.veen .wrapper').removeClass('move');
				$('.body').css('background','#F2B051');
				$(".veen .rgstr-btn button").removeClass('active');
				$(this).addClass('active');
			});
})















