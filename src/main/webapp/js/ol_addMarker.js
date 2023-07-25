/* 마커 생성하기 함수 - 분리 예정*/
function addMarker(data,layerName) {
		
	
	var dataxml= getXmlFromString(data)
	var apiMap = nodeValfunc(dataxml)
	
	
	/*xml str to xml obj*/
	function getXmlFromString(data) {
	    var parseXml;

	    if (window.DOMParser) {
	        var dp = new window.DOMParser();
	        return dp.parseFromString(data, "text/xml");
	    } else if (typeof window.ActiveXObject != "undefined" 
	        && new window.ActiveXObject("Microsoft.XMLDOM")) {
	        var xmlDoc = new window.ActiveXObject("Microsoft.XMLDOM");
	        xmlDoc.async = "false";
	        xmlDoc.loadXML(data);
	        
	        return xmlDoc;
	    }

	    return null;
	}
	
			
	/*xml 객체 풀기*/
	function nodeValfunc( data ) { // ( xml ) 객체 넘겨받기
		let cctvtype, coordx, coordy, cctvname, cctvurl, cctvformat;   //api 속성 객체
		let cctvtype_temp,coordx_temp,coordy_temp,cctvname_temp,cctvurl_temp,cctvformat_temp; //temp객체
		
		
		
		cctvtype = data.getElementsByTagName("cctvtype");				
		coordx = data.getElementsByTagName("coordx");
		coordy = data.getElementsByTagName("coordy");
		cctvname = data.getElementsByTagName("cctvname");
		cctvurl = data.getElementsByTagName("cctvurl");
		cctvformat = data.getElementsByTagName("cctvformat");
		
		var  cctvLayer = [];
			
		for(i=0; i < cctvtype.length; i++){
			
			cctvtype_temp =  cctvtype[i].childNodes[0].nodeValue;
			coordx_temp =   coordx[i].childNodes[0].nodeValue;
			coordy_temp =   coordy[i].childNodes[0].nodeValue;
			cctvname_temp =   cctvname[i].childNodes[0].nodeValue;
			cctvurl_temp =   cctvurl[i].childNodes[0].nodeValue;
			cctvformat_temp =   cctvformat[i].childNodes[0].nodeValue;
			
			
			var markerSource = new ol.source.Vector();
    	    //Point 좌표 등록
    	    var point_feature = new ol.Feature({
    	        geometry: new ol.geom.Point([coordx_temp,coordy_temp]),  //좌표부분을  해당 cctv 데이터로 들어가도록
    	        name: cctvname_temp,/*layerName*/  // 
    	        population: 4000,
    	        rainfall: 500,
    	    });
    	    point_feature.setId(i)
    	    point_feature.set('cctvurl',cctvurl_temp)
    	    //markerSource에 등록한 point를 담는다. addFeature를 이용해서, 여러개의 point를 source에 담는다.
    	    markerSource.addFeature(point_feature);

    	    //style을 활용해서, point의 style을 변경한다.
    	    var markerStyle = new ol.style.Style({
    		    image: new ol.style.Icon({ //마커 이미지
    		        opacity: 1, //투명도 1=100% 
    		        scale: 0.07, //크기 1=100%

    		        //marker 이미지, 해당 point를 marker로 변경한다.
    		        src: '../images/cctv.png'  //제주로고 임시로 테스트
    		    }),
    	        //html의 css, z-index 기능이다.
    		    zindex: -1
    		});

    	    // 마커 레이어 생성
    		
    	    eval('var cctv_Point'+(i)+' = new ol.layer.Vector({source: markerSource,style: markerStyle});')
			/*cctv_Point = new ol.layer.Vector({
    		    source: markerSource, //마커 feacture들
    		    style: markerStyle //마커 스타일
    		    
    		});*/
			/*map.addLayer(cctv_Point)*/
    	   
			cctvLayer.push(eval('cctv_Point'+(i)))
    	    
			
		}
		
		cctvLayerGroup = new ol.layer.Group({  // layer를 추가 시킨다.
			layers:cctvLayer
		})
		
	}

	
			
			
    		
    		
}
