 /* 왼쪽 left 메뉴 라디오 버튼 기능 부분 */
        // Layer Switcher Logic for Basemaps
        const baseLayerElements = document.querySelectorAll('.sidebar > input[type=radio]');
        //console.log(baseLayerElements);

        for(let baseLayerElement of baseLayerElements) {
          //console.log(baseLayerElement);

          //radio 버튼이 변경 될때 이벤트가 발생된다.
          	baseLayerElement.addEventListener('change', function() {
            //console.log(this.value);

            //선택한 radio의 value를 가져온다.
            let baseLayerElementValue = this.value;
            //console.log(baseLayerElementValue);

            baseLayerGroup.getLayers().forEach(function (element, index, array) {

              //radio 선택했을 때 해당 title를 가져오기 위해 선택한다.
              //이를 적용하기 위해서는 위의 Layer를 true로 적용시켜야 한다.
              let baseLayerTitle = element.get('title');

              element.setVisible(baseLayerTitle === baseLayerElementValue);

              console.log('baseLayerTitle : '+ baseLayerTitle, 'baseLayerElementValue : '+ baseLayerElementValue);
            })
          })
        }
    
    	
    	/* --------왼쪽 left 메뉴 라디오 버튼 기능 부분 끝------------ */
    	
    	/* 왼쪽 left 메뉴 체크박스 기능 부분 */
        $('#cctv').on('change', function() {
        	  var isChecked = $(this).is(':checked');
        	  if (isChecked) {
        	    map.addLayer(cctvLayerGroup)
        	  } else {
        	    map.removeLayer(cctvLayerGroup);
        	  }
        })
        $('#temp').on('change', function() {
        	  var isChecked = $(this).is(':checked');
        	  if (isChecked) {
        	    map.addLayer(temp_Point)
        	  } else {
        	    map.removeLayer(temp_Point);
        	  }
        })