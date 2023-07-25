<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" %>
<!doctype html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="chrome=1">
    <meta name="viewport" content="initial-scale=1.0, user-scalable=no, width=device-width">
    <script src="http://ajax.googleapis.com/ajax/libs/jquery/1/jquery.min.js"></script>
    <link href="<c:url value='/'/>../../css/ol.css" rel="stylesheet" type="text/css" >
    <script src="https://unpkg.com/elm-pep"></script>
    <!-- The lines below are only needed for old environments like Internet Explorer and Android 4.x -->
    <script src="https://cdn.polyfill.io/v3/polyfill.min.js?features=fetch,requestAnimationFrame,Element.prototype.classList,TextDecoder"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/core-js/3.18.3/minified.js"></script>
    <script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css">
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.bundle.min.js"></script>
    <link href="//vjs.zencdn.net/5.8/video-js.min.css" rel="stylesheet">
    <script src="//vjs.zencdn.net/5.8/video.min.js"></script>
    
    <link href=" <c:url value='/'/> ../../css/openlayerDemo.css" rel="stylesheet">   <!-- css 분리 -->
    
    <!-- 
    <script type="text/javascript" src="http://openapi.its.go.kr/javascript/jquery.xml2json.js"></script>
     -->	<!-- xml to json -->
    <!-- <script type="text/javascript" src="http://openapi.its.go.kr/javascript/openapi.cctv.js"></script> -->	<!-- open cctv api -->
    
    <!-- 구조 생성전에 추가되는 js 파일 -->
    <script type="text/javascript" src="<c:url value='/js/ol.js' />"></script> <!-- openLayers lib-->
    <script type="text/javascript" src="<c:url value='/js/ol_baseLayerGroup.js' />"></script> <!-- 배경지도 그룹 분리  -->
    <script type="text/javascript" src="<c:url value='/js/ol_addMarker.js' />"></script> <!-- addMarker 기능 분리 -->
    
    <link rel="preconnect" href="//its.go.kr">
    <link rel="preconnect" href="//its.go.kr:9443">
    
    <title>OpenLayer 지도|좌표확인</title>
  </head>
  <body>
  
  	<div class="grid-container">
  		<div class="grid-1">	
  			<div class="sidebar">  <!-- class 명 변경시 ol_leftMenu.js 파일 수정 필요 -->
  				<h2> Base Layers</h2>
  				<input type="radio" name="baseLayerRButton" value="OSMap" checked>OSMap<br>  <!-- ol_baseLayerGroup.js 그룹중 title와 동일한 value를 갖게하여 사용 -->
  				<input type="radio" name="baseLayerRButton" value="VworldMap" >VworldMap<br>
  				
  				<hr width='100%' color='#000' noshade />
  				
  				<input type="checkbox" name="pointLayer" id="cctv" value="cctv" checked> cctv<br>
  				<input type="checkbox" name="pointLayer" id="temp" value="temp" > temp<br>
  				
  			</div>
  		</div>
  			
	  	<div class="grid-2">
	  		<div id="map" class="map">
	    		<div id="popup"></div>   
    		</div>
    	<div id="mouse-position"></div> 
	    </div>
  	</div>
  	
  	<div>
  		<!--
  		<video id="video_T140609D0481" width="286" height="260" controls="" style="object-fit: fill;" autoplay >
  			 poster="https://cctvsec.ktict.co.kr:8091/2811/Q7cX9/wm431++b2//nea3tmzRHgBsqL0UkRlOfTTTV8xY2KhMTciUBkV1YUBMdra" crossorigin="anonymous"
  			<source type="video/mp4" src=""/>
  		</video>
  		 -->
  		<!-- <video controls  style="width: 345px; height:300px;">
			<source autoplay src="http://cctvsec.ktict.co.kr/2/q04JQQ+B3WLqgucq8nwf9LCtH9A58QkUzf5izyV0x2UwVdMHQ0OCFPHaGXX4Lm4M9LI11NjWi8U5uFMWAhE/Mg==">
		</video> -->
		<!-- <video autoplay id="video_172202236" width="286" height="260" controls="" style="object-fit: fill;"  
		poster="http://cctvsec.ktict.co.kr/2/q04JQQ+B3WLqgucq8nwf9LCtH9A58QkUzf5izyV0x2XLrl+pkoiGEG3J7N9VZAQwxnO7FFK5g5qwsZ2TpyFZIA==" 
		crossorigin="anonymous" src="http://cctvsec.ktict.co.kr/2/q04JQQ+B3WLqgucq8nwf9LCtH9A58QkUzf5izyV0x2UwVdMHQ0OCFPHaGXX4Lm4M9LI11NjWi8U5uFMWAhE/Mg=="></video>  		 -->
  	</div>
  
    
    
    <!-- 좌표계 변환 표출 부분 필요없지만 놔두는 중 -->
    <form>
    	<label>Projection</label>
    	<select id="projection">
	    	<option value="EPSG:4326">EPSG:4326</option>
	    	<option value="EPSG:3857">EPSG:3857</option>
    	</select>
    	<label>Precision </label>
     	<input id="precision" type="number" min="0" max="12" value="4"/>
    </form>
 

    <script type="text/javascript">
    
    	var cctv_Point;    //cctv마커 Layer
	    
	    var vectorLayer = new ol.layer.Vector({
	   			source: new ol.source.Vector()
			});
	    
	 

    	/* 좌표계 변환 표출 부분 */
    	var mousePositionControl = new ol.control.MousePosition({
    		coordinateFormat: ol.coordinate.createStringXY(4),
    		projection: 'EPSG:4326',
    		className: 'custom-mouse-position',
    		target: document.getElementById('mouse-position'),
    		undefinedHTML: '&nbsp;',
    	});
    	/* -----좌표계 변환 표출 부분 끝------ */   	
    	
    	var map = new ol.Map({
    		controls : ol.control.defaults().extend([mousePositionControl]),
    		target:'map',
    		
    		
    		view: new ol.View({
    			projection:'EPSG:4326',
    			center: [128.25, 35.95],
    			zoom : 7
    		})
    	});
        map.addLayer(baseLayerGroup);  //ol_baseLayerGroup.js 에 추가된 레이어를 맵에 add한다.
        map.addLayer(vectorLayer);	// cctv point 데이터가 될 데이터  추후 분리 예정     
    	

	  // var url = 'http://openapi.its.go.kr:8081/api/NCCTVInfo?'
		//var url = "http://openapi.its.go.kr:9443/cctvInfo?apiKey=b07597c6c11642a881c47b4357289d64&type=ex&cctvType=2&minX=127.100000&maxX=128.890000&minY=34.100000&maxY=39.100000&getType=json"
    	   /* CCTV API 데이터 읽어오기  크로스도메인 방지 자바단에서 처리 */
	    $.ajax({				
	        url: "<c:url value='/cctvApiData.json'/>",
	        /* url: url, */
	        /* data:{"eName":eName}, */
	        success: function(res) {
	        	let data = res.data
	      		console.log("성공 확인");
	      		console.log(res);
	      		addMarker(data,'cctv'); //마커 등록 함수 호출  //함수는 ol_addMarker.js 에있음  //데이터 리스트를 파라미터로 넘겨줘야 하나?  param (api.xml , layerName)
	        }
	    })
	    
    			
    	var projectionSelect = document.getElementById('projection');
    	projectionSelect.addEventListener('change', function (event) {
    		mousePositionControl.setProjection(event.target.value);
    	});

    	var precisionInput = document.getElementById('precision');
    	precisionInput.addEventListener('change', function (event) {
    		var format = createStringXY(event.target.valueAsNumber);
    		mousePositionControl.setCoordinateFormat(format);
    	});
    	
    </script>
    <!-- 모든 구조가 생성후 실행 js파일 -->
    <script type="text/javascript" src="<c:url value='/js/ol_leftMenu.js' />"></script> <!-- 왼쪽 메뉴 기능 분리 -->
    <script type="text/javascript" src="<c:url value='/js/ol_popup.js' />"></script> <!-- popup기능 분리  -->
 </body>
</html>