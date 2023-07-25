/*function popupMaker(cctvurl,cctvname){*/
	
	/* 피쳐에 팝업 추가하는 기능 */ 
	const element = document.getElementById('popup');  //팝업 엘리맨탈 가져오기  (포인트에 팝업창 넣는부분)

	const popup = new ol.Overlay({
		element: element,
		positioning: 'bottom-center',
		stopEvent: false,
	});
	map.addOverlay(popup);

	// display popup on click
	map.on('click', function (evt) {  //맵 클릭을 체크하는 기능 온
		const feature = map.forEachFeatureAtPixel(evt.pixel, function (feature) {
	    	return feature;
	  	});
		if (feature) {  //맵클릭했을때 피쳐가 클릭 되면
	    	popup.setPosition(evt.coordinate);  //팝업 생성 코드 추가
	    	var option = "width = 500, height = 500, top = 100, left = 200, location = no, status=no"
			window.open(feature.get('cctvurl')+"", feature.get('cctvname')+"", option);
	  		/*$(element).popover({
		    	placement: 'top',
		    	html: true,
		    	content: '<video controls  style="width: 345px; height:300px;"><source autoplay src="http://cctvsec.ktict.co.kr/2/q04JQQ+B3WLqgucq8nwf9LCtH9A58QkUzf5izyV0x2UwVdMHQ0OCFPHaGXX4Lm4M9LI11NjWi8U5uFMWAhE/Mg=="></video>',   //html 코드사용가능  iframe 적용해서 영상 취득 가능한지 테스트
		    });
		    $(element).popover('show');*/
	  	} else {//피텨가 아니면 보여주지 않음
	    	/*$(element).popover('dispose');*/
	    	console.log("피쳐아님클릭")
	  	}
	});

	// change mouse cursor when over marker
	map.on('pointermove', function (e) {
		const pixel = map.getEventPixel(e.originalEvent);
		const hit = map.hasFeatureAtPixel(pixel);
	  /* map.getTarget().style.cursor = hit ? 'pointer' : ''; */
	});
	// Close the popup when the map is moved
	map.on('movestart', function () {
		$(element).popover('dispose');
	});
	
/*}*/

			