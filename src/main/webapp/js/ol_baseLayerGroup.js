//배경지도 레이어를 만들어서   그룹에 추가
const openStreetMap = new ol.layer.Tile({
    		source : new ol.source.OSM(),
    		visible : true,
    		title : 'OSMap'
    		 
    	})
    	
const vworldMap = new ol.layer.Tile({ //타일 생성
	title : 'VworldMap', //이름
	visible : false, //보여짐 여부
	type : 'base', //지도 종류(일반) ---(야간(midnight), 위성(satellite) 등)
	source : new ol.source.XYZ({ //vworld api 사용
		url : 'http://api.vworld.kr/req/wmts/1.0.0/E84B4869-48FE-3C1A-8EF3-94AF3A02D7EB/Base/{z}/{y}/{x}.png'
	})
});



const baseLayerGroup = new ol.layer.Group({  // layer를 추가 시킨다.
    layers : [
    	openStreetMap, vworldMap
    ]
})

