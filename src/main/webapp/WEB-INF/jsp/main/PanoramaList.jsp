<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>
<title>제주오름 파노라마 영상</title>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<!-- 합쳐지고 최소화된 최신 CSS -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">
<!-- 부가적인 테마 -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap-theme.min.css">
<!-- 합쳐지고 최소화된 최신 자바스크립트 -->
<script src="http://ajax.googleapis.com/ajax/libs/jquery/1/jquery.min.js"></script>
<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>
<script src="https://unpkg.com/isotope-layout@3/dist/isotope.pkgd.js"></script>

<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Raleway">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<style>
body,h1,h2,h3,h4,h5,h6 {font-family: "Raleway", sans-serif}
.o_all {
    margin-bottom: 15px;
}
// Classes
.show {
  display: block !important;
}
.hidden {
  display: none !important;
  visibility: hidden !important;
}
.invisible {
  visibility: hidden;
}

// Usage as mixins
.element {
  .show();
}
.another-element {
  .hidden();
}
.adrassname{
  float:right;
}

</style>
<script>
$(document).ready( function() {
	
	    $('#airviewbtn').on('click',function(){
	    	$('#roadview').addClass('hidden');
	    	$('#airview').removeClass('hidden');
	    	$('#airviewDiv').removeClass('hidden');
	    	
	    });
	    $('#roadviewbtn').on('click',function(){
	    	$('#airview').addClass('hidden');
	    	$('#airviewDiv').addClass('hidden');
	    	$('#roadview').removeClass('hidden');
	    });
	
		$('.portfolio_item_wrap').isotope({ itemSelector: '.o_all'});
		
		// filter items on button click 
		$('.filterbutton').on( 'click',function() {
			var filterValue = $(this).attr('data-filter');
			console.log(filterValue)
			$('.portfolio_item_wrap').isotope({ filter: filterValue });
		}); 
		
		$("#keyword").keyup(function() {
			$(".o_all").removeClass("search")
			
            var k = $(this).val();
            
            var temp = $(".tit:contains('" + k + "')").parent().parent().parent()
            temp.addClass("search")
            
            
            var filterValue = '.search';
			console.log(filterValue)
			$('.portfolio_item_wrap').isotope({ filter: filterValue });
            
		})
	})

		
	
	

</script>
<body class="w3-light-grey w3-content" style="max-width:1600px">

<!-- Sidebar/menu -->
<!-- <nav class="w3-sidebar w3-collapse w3-white w3-animate-left" style="z-index:3;width:300px;" id="mySidebar"><br>
  <div class="w3-container">
    <a href="#" onclick="w3_close()" class="w3-hide-large w3-right w3-jumbo w3-padding w3-hover-grey" title="close menu">
      <i class="fa fa-remove"></i>
    </a>
    <img src="/w3images/avatar_g2.jpg" style="width:45%;" class="w3-round"><br><br>
    <h4><b>PORTFOLIO</b></h4>
    <p class="w3-text-grey">Template by W3.CSS</p>
  </div>
  <div class="w3-bar-block">
    <a href="#portfolio" onclick="w3_close()" class="w3-bar-item w3-button w3-padding w3-text-teal"><i class="fa fa-th-large fa-fw w3-margin-right"></i>PORTFOLIO</a> 
    <a href="#about" onclick="w3_close()" class="w3-bar-item w3-button w3-padding"><i class="fa fa-user fa-fw w3-margin-right"></i>ABOUT</a> 
    <a href="#contact" onclick="w3_close()" class="w3-bar-item w3-button w3-padding"><i class="fa fa-envelope fa-fw w3-margin-right"></i>CONTACT</a>
  </div>
  <div class="w3-panel w3-large">
    <i class="fa fa-facebook-official w3-hover-opacity"></i>
    <i class="fa fa-instagram w3-hover-opacity"></i>
    <i class="fa fa-snapchat w3-hover-opacity"></i>
    <i class="fa fa-pinterest-p w3-hover-opacity"></i>
    <i class="fa fa-twitter w3-hover-opacity"></i>
    <i class="fa fa-linkedin w3-hover-opacity"></i>
  </div>
</nav> -->

<!-- Overlay effect when opening sidebar on small screens -->
<div class="w3-overlay w3-hide-large w3-animate-opacity" onclick="w3_close()" style="cursor:pointer" title="close side menu" id="myOverlay"></div>

<!-- !PAGE CONTENT! -->
<div class="w3-main" >

  <!-- Header -->
  <header id="portfolio">
    
    <span class="w3-button w3-hide-large w3-xxlarge w3-hover-text-grey" onclick="w3_open()"><i class="fa fa-bars"></i></span>
    <div class="w3-container">
    <h1><b>제주특별자치도 오름 파노라마 영상</b></h1>
    <div class="w3-section w3-bottombar w3-padding-16">
      
      <button id="airviewbtn" class="w3-button filterbutton" data-filter=".air"><i class="fa fa-plane w3-margin-right" ></i>항공뷰</button>
      <button id="roadviewbtn" class="w3-button w3-hide-small filterbutton" data-filter=".road"><i class="fa fa-car w3-margin-right"></i>로드뷰</button>

    </div>
    <div id="airview" class="w3-section w3-padding-10 o_all">
      <span class="w3-margin-right ">지역:</span> 
      <button id="o_all" class="w3-button filterbutton " data-filter="*">전체</button>
      <button id="dongbu" class="w3-button filterbutton " data-filter=".dongbu"><i class="fa fa-map-pin w3-margin-right" ></i>동부</button>
      <button id="seobu" class="w3-button w3-hide-small  filterbutton " data-filter=".seobu"><i class="fa fa-map-pin w3-margin-right"></i>서부</button>
      <button id="nambu" class="w3-button w3-hide-small filterbutton " data-filter=".nambu"><i class="fa fa-map-pin w3-margin-right"></i>남부</button>
      <button id="buckbu" class="w3-button w3-hide-small filterbutton " data-filter=".buckbu"><i class="fa fa-map-pin w3-margin-right"></i>북부</button>
      <span id="input-form" style="float:right" class="air">
           	검색 : <input type="text" id="keyword" />
      </span>
    </div>
   
    </div>
   
  </header>
  
  
  
  <!-- First Photo Grid-->
  <div id="airviewDiv" class="bs-docs-grid air o_all"> 
    <div class="w3-section w3-padding-10 air o_all">
    	<div class ="o_all"><b>항공뷰</b></div>
    </div>
  	<div  class="row portfolio_item_wrap" id="oleum-table">
	    <div class="col-md-4 air buckbu o_all">
	      <img src="/images/oleum/oleum1.PNG" alt="oleum1" style="width:100%" class="w3-hover-opacity">
	      <div class="w3-container w3-white">
	        <p><b class="tit">한라산</b> <span class="adrassname w3-text-gray">애월읍 가시리</span></p>
	        <p style="height:80px">한라산은 제주도 중앙부에 있는 해발 1,947.06m, 면적 약 1,820km²의 화산으로, 제주도의 면적 대부분을 차지하고 있다. </p>
	      </div>
	    </div>
	    <div class="col-md-4 air dongbu o_all">
	      <img src="/images/oleum/oleum2.PNG" alt="oleum2" style="width:100%" class="w3-hover-opacity">
	      <div class="w3-container w3-white">
	        <p><b class="tit">따라비오름</b></p>
	        <p style="height:80px">따라비오름은 제주특별자치도의 기생화산으로, 해발 342m, 높이 107m다. 위치는 제주특별자치도 서귀포시 표선면 가시리 산62번지 일대이다.</p>
	      </div>
	    </div>
	    <div class="col-md-4 air seobu o_all">
	      <img src="/images/oleum/oleum3.PNG" alt="oleum3" style="width:100%" class="w3-hover-opacity">
	      <div class="w3-container w3-white">
	        <p><b class="tit">산방산</b></p>
	        <p style="height:80px">산방산은 대한민국 제주특별자치도 서귀포시 안덕면 사계리에 있는 산이다. '산방'이라는 말은 굴이 있는 산을 뜻한다. 높이는 해발 395m이며, 남쪽 해발 150m 쯤에 해식동굴이 있어서  </p>
	      </div>
	    </div>
	    <div class="col-md-4 air nambu o_all">
	      <img src="/images/oleum/oleum4.PNG" alt="oleum4" style="width:100%" class="w3-hover-opacity">
	      <div class="w3-container w3-white">
	        <p><b class="tit">성산일출봉</b></p>
	        <p style="height:80px">성산일출봉 천연보호구역은 제주특별자치도 서귀포시 성산읍 성산리에 있는 산이다. 커다란 사발 모양의 분화구가 특징으로, 분화구 내부의 면적은 129,774m²이다. 높이는 182 m이다. </p>
	      </div>
        </div>
	    <div class="col-md-4 air seobu o_all">
	      <img src="/images/oleum/oleum5.PNG" alt="oleum5" style="width:100%" class="w3-hover-opacity">
	      <div class="w3-container w3-white">
	        <p><b class="tit">새별오름</b></p>
	        <p style="height:80px">새별오름은 제주특별자치도 제주시 애월읍 봉성리에 위치한 오름이다. 새별오름의 면적은 522,216m², 둘레는 2,713m, 높이는 519.3m이다.</p>
	      </div>
	    </div>
	    <div class="col-md-4 air buckbu o_all">
	      <img src="/images/oleum/oleum6.PNG" alt="oleum6" style="width:100%" class="w3-hover-opacity">
	      <div class="w3-container w3-white">
	        <p><b class="tit">용눈이오름</b></p>
	        <p style="height:80px">용눈이오름의 산정부는 북동쪽의 정상봉을 중심으로 세 봉우리를 이루고, 그 안에 동서쪽으로 다소 트여있는 타원형의 분화구가 있으며, 전체적으로 산체는 동사면쪽으로 얕게 벌어</p>
	      </div>
	    </div>
	    <div class="col-md-4 air buckbu o_all">
	      <img src="/images/oleum/oleum7.PNG" alt="oleum7" style="width:100%" class="w3-hover-opacity">
	      <div class="w3-container w3-white">
	        <p><b class="tit">검은오름</b></p>
	        <p style="height:80px">제주특별자치도의 제주시 조천읍과 서귀포시 남원읍, 서귀포시 표선면의 경계를 이루고 있는 오름이다. 정상의 분화구의 형태는 등성이를 기준으로 동, 서로 나뉘어 있는 복합형식으로 되어 있다.</p>
	      </div>
	    </div>
	    <div class="col-md-4 air nambu o_all">
	      <img src="/images/oleum/oleum8.PNG" alt="oleum8" style="width:100%" class="w3-hover-opacity">
	      <div class="w3-container w3-white">
	        <p><b class="tit">아부오름</b></p>
	        <p style="height:80px">제주특별자치도 제주시 구좌읍 송당리에 있는 오름(측화산)으로, 제주도에서 화구가 매우 큰 오름에 속한다. 높이가 301m로 화구 안에는 나무가 자라고 있다.</p>
	      </div>
	    </div>
	    <div class="col-md-4 air dongbu o_all">
	      <img src="/images/oleum/oleum9.PNG" alt="oleum9" style="width:100%" class="w3-hover-opacity">
	      <div class="w3-container w3-white">
	        <p><b class="tit">다랑쉬오름</b></p>
	        <p style="height:80px">다랑쉬오름은 제주특별자치도의 제주시에 있는 측화산이다. 구좌읍 송당리와 세화리에 걸쳐 있는 분화구는 원뿔 모양의 원형으로, 한라산 동부에 있는 측화산들을 대표하는 오름이다.</p>
	      </div>
	    </div>
    </div>
  </div>
  
  <div id="roadview" class="bs-docs-grid road o_all">
	<div class="w3-section w3-padding-10 road o_all">
		<div class ="o_all"><b>로드뷰</b></div>
	</div>
  	<div  class="row portfolio_item_wrap" id="oleum-table">
	    <div class="col-md-4 road o_all">
	      <img src="/images/oleum/oleum1.PNG" alt="oleum1" style="width:100%" class="w3-hover-opacity">
	      <div class="w3-container w3-white">
	        <p><b class="tit">한라산</b></p>
	        <p style="height:80px">한라산은 제주도 중앙부에 있는 해발 1,947.06m, 면적 약 1,820km²의 화산으로, 제주도의 면적 대부분을 차지하고 있다. </p>
	      </div>
	    </div>
	    <div class="col-md-4 road  o_all">
	      <img src="/images/oleum/oleum2.PNG" alt="oleum2" style="width:100%" class="w3-hover-opacity">
	      <div class="w3-container w3-white">
	        <p><b class="tit">따라비오름</b></p>
	        <p style="height:80px">따라비오름은 제주특별자치도의 기생화산으로, 해발 342m, 높이 107m다. 위치는 제주특별자치도 서귀포시 표선면 가시리 산62번지 일대이다.</p>
	      </div>
	    </div>
	    <div class="col-md-4 road  o_all">
	      <img src="/images/oleum/oleum3.PNG" alt="oleum3" style="width:100%" class="w3-hover-opacity">
	      <div class="w3-container w3-white">
	        <p><b class="tit">산방산</b></p>
	        <p style="height:80px">산방산은 대한민국 제주특별자치도 서귀포시 안덕면 사계리에 있는 산이다. '산방'이라는 말은 굴이 있는 산을 뜻한다. 높이는 해발 395m이며, 남쪽 해발 150m 쯤에 해식동굴이 있어서  </p>
	      </div>
	    </div>
	    <div class="col-md-4 road o_all">
	      <img src="/images/oleum/oleum4.PNG" alt="oleum4" style="width:100%" class="w3-hover-opacity">
	      <div class="w3-container w3-white">
	        <p><b class="tit">성산일출봉</b></p>
	        <p style="height:80px">성산일출봉 천연보호구역은 제주특별자치도 서귀포시 성산읍 성산리에 있는 산이다. 커다란 사발 모양의 분화구가 특징으로, 분화구 내부의 면적은 129,774m²이다. 높이는 182 m이다. </p>
	      </div>
        </div>
    </div>
  </div>
  <!-- Footer -->
  <footer class="w3-container w3-padding-32 w3-dark-grey">
  	
  	<div class="w3-black w3-center w3-padding-24">Powered by <a href="jeju.go.kr" title="제주특별자치도" target="_blank" class="w3-hover-opacity">제주특별자치도</a></div>
  
  </footer>
  
  

<!-- End page content -->
</div>

<script>
// Script to open and close sidebar
function w3_open() {
    document.getElementById("mySidebar").style.display = "block";
    document.getElementById("myOverlay").style.display = "block";
}
 
function w3_close() {
    document.getElementById("mySidebar").style.display = "none";
    document.getElementById("myOverlay").style.display = "none";
}
</script>

</body>
</html>
