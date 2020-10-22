$(function () {    
	document.body.style.zoom = "75%";
    $('.menuWrap > nav > ul > li').mouseenter(function(){
        $('header').stop().animate({
            height: '413px'
        });
    });
    
    $('header').mouseleave(function(){
        $('header').stop().animate({
            height: '120px'
        });
    });
    
    // Sub Page Drop-Down Menu
    $(".openDep2").click(function(){
        var $on = $(this).hasClass("on");

        if($on!=true){
            $(this).addClass("on");
            $(this).siblings($(".localDep2")).slideDown(300);
        }else{
            $(this).removeClass("on");
            $(this).siblings($(".localDep2")).slideUp(300);
        }        
        return false;
    });
    
    //sub01_05 tap구현
    $('.tapMenu01 > div').click(function(){
        $('.tapMenu01 > div').removeClass('on');
        $(this).addClass('on');
        
        $('.sub01_05 .contents > div').hide();
        $('.sub01_05 .contents > div').eq($(this).index()).show();
    });
    $('.tapMenu01 > div').eq(0).trigger('click');
    
    //sub03 tap구현
    $('.sub03 .subContWrap .cont').click(function(){
        $('.sub03 .subContDescWrap > div').hide();
        $('.sub03 .subContDescWrap > div').eq($(this).index()).show();
    });
    
    $('.sub03 .subContDescWrap .close').click(function(){
        $('.sub03 .subContDescWrap > div').hide();
    });
	$("#com").click(function(){
    	$("#daumRoughmapContainer1603093900849").html("");
			new daum.roughmap.Lander({
				"timestamp" : "1603093021947",
				"key" : "22itw",
				"mapWidth" : "1260",
				"mapHeight" : "577"
			}).render();
    })
    $("#yun").click(function(){
    	$("#daumRoughmapContainer1603093021947").html("");
    	new daum.roughmap.Lander({
			"timestamp" : "1603093900849",
			"key" : "22iui",
			"mapWidth" : "1260",
			"mapHeight" : "577"
		}).render();
    })
});
