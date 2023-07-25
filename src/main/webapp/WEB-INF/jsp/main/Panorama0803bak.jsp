<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="initial-scale=1, maximum-scale=1, user-scalable=no, width=device-width, shrink-to-fit=no">
    <title>제이시스 파노라마</title>
    <script src="http://ajax.googleapis.com/ajax/libs/jquery/1/jquery.min.js"></script>
    <script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
   <%--  <script type="text/javascript" src="<c:url value='/js/main.js' />"></script> --%>
  </head>
  <style>
	html{
	  margin: 0;
	  width: 100%;
	  height: 100%;
	  overflow: hidden;
    }
	body {
	  margin: 0;
	  width: 75%;
	  height: 75%;
	  overflow: hidden;
    }
	
	#container {
	  margin-left: auto;
	  margin-right: auto;
	  margin-top: 10px;
	  width: 700px;
	  height: 400px;
	}
	.inpSt01{
		padding: 10px;
    	width: 100px;
	}
  </style>
  
   
    
 
  <body style="position:relative; overflow:visible;">
  
	  <script src="js/three.min.js"></script>
	  <script src="js/panolens.min.js"></script>
	  <script src="js/panolens.js"></script>
	    
	
		
	  <script>
	  
	  function btn_click(){
		  console.log("클릭")
	  }
	  
	  
	  
	  	  //오름 영문명 세션으로 받아오기
	 	  var eName = '<%=(String)session.getAttribute("eName")%>';
	 	  
	 	  
	    //DB에서 해당오름 포인트 수확인 후 포인트 수 가져오기
	    $.ajax({
	        url: "<c:url value='/coordPoint.json'/>",     
	        data:{"eName":eName},
	        success: function(res) {
	        	console.log(res);
	        	
	        	
	        	
	        }
	        
	        
	        
	    });
	  
		//이미지 리스트  (뷰 포인트 수만큼 이미지 생성)
		  const panorama1 = new PANOLENS.ImagePanorama( '/images/oleum_Panorama/'+eName+'/DJI_0001.JPG');
		  const panorama2 = new PANOLENS.ImagePanorama( '/images/oleum_Panorama/'+eName+'/DJI_0002.JPG' );
		  const panorama3 = new PANOLENS.ImagePanorama( '/images/oleum_Panorama/'+eName+'/DJI_0003.JPG' );
		  const panorama4 = new PANOLENS.ImagePanorama( '/images/oleum_Panorama/'+eName+'/DJI_0004.JPG' );
		  const panorama5 = new PANOLENS.ImagePanorama( '/images/oleum_Panorama/'+eName+'/DJI_0005.JPG' );
		  const panorama6 = new PANOLENS.ImagePanorama( '/images/oleum_Panorama/'+eName+'/DJI_0006.JPG' );
		  const panorama7 = new PANOLENS.ImagePanorama( '/images/oleum_Panorama/'+eName+'/DJI_0007.JPG' );
	  
	  
	  
	       //동적 쿼리로 뷰 방향 설정
	      var lookAtPositions = [   //이미지 노출시 보는 방향 설정
	        new THREE.Vector3(5000.00, -1764.75, 352.58),    //1
	        new THREE.Vector3(5000.00, -1534.20, -317.53),    //2
	        new THREE.Vector3(5000.00, -4919.55, -1197.11),      //3
	        new THREE.Vector3(5000.00, -4919.55, -1197.11),      //4
	        new THREE.Vector3(5000.00, -4919.55, -1197.11),      //5
	        new THREE.Vector3(5000.00, -4919.55, -1197.11),      //6
	        new THREE.Vector3(5000.00, -4919.55, -1197.11)     //7
	        
	      ];
	     
	       //포인트 수만큼 반복하면서 각 노드별 링크 노드 불러오기
	      var linkPositions = [  //화살표 위치 설정 1번이미지에서 연결되는 노드
	         new THREE.Vector3(5000.00, -1750.39, -3696.07),    //1 -> 2
	         new THREE.Vector3(4054.08, -2277.71, 5000.00),     //1 -> 4
	         new THREE.Vector3(5000.00, -1139.89, 1518.55)      //1 -> 3
	         
	      
	      ];
	      var linkPositions2 = [  //화살표 위치 설정 2번이미지에서 연결되는 노드
	          new THREE.Vector3(5000.00, -1750.39, -3696.07),    //2 > 5
	          new THREE.Vector3(4054.08, -2277.71, 5000.00),     //2 > 1
	          new THREE.Vector3(5000.00, -1139.89, 1518.55)      //2 > 3
	          
	       
	       ];
	      var linkPositions3 = [  //화살표 위치 설정  3번이미지에서 연결되는노드
	          new THREE.Vector3(5000.00, -1750.39, -3696.07),    //3 > 2
	          new THREE.Vector3(4054.08, -2277.71, 5000.00),     //3 > 1
	          new THREE.Vector3(5000.00, -1139.89, 1518.55)      //3 > 4
	          
	       
	       ];
	    
		/* var infospotPositions = [   //인포 위치 설정
			new THREE.Vector3(5000.00, -2182.24, 2696.65),
			new THREE.Vector3(-1708.88, 1131.28, -5000.00)
		  ]; */
	    
	    
	     //const container = document.querySelector( '#container' ); 
	     //const panel = document.querySelector('#panel'); 
	     
	     
	
	    		
	    		
	   // 전체 동적 코딩		
	   //시작 포지션 설정  lookatposition-1 배열 불러와서 시작포지션 설정
	     panorama1.addEventListener( 'enter-fade-start', function(){
	     viewer.tweenControlCenter( lookAtPositions[0], 1000 );
	    } );    
	    
	    //시작 포지션 설정
	     panorama2.addEventListener( 'enter', function(){
	      viewer.tweenControlCenter( lookAtPositions[1], 0 );
	    } );
	    
	     panorama3.addEventListener( 'enter', function(){
	        viewer.tweenControlCenter( lookAtPositions[2], 0 );
	    } );
		
	    //링크 등록
	     panorama1.link( panorama2, linkPositions[0] );
	     panorama2.link( panorama1, linkPositions[1] );
	     panorama2.link( panorama3, linkPositions[2] );
	    //panorama2.link( panorama, infospotPositions[1] );
	    
	    // 전체 동적 코딩	끝
	    
	    //인포 등록 
	  //  const infospot = new PANOLENS.Infospot( 350, PANOLENS.DataImage.Info );
	   // const infospot2 = new PANOLENS.Infospot( 350, PANOLENS.DataImage.Info );
	   // infospot.position.set(-5000.00, 1890.22, 3444.62);
	   // infospot.addHoverText( '제주마', 30 );
	  //  infospot2.position.set(-5000.00, 1832.75, -3732.97);
	  //  infospot2.addHoverText( '제주마', 30 );   
	   // panorama.add( infospot );
	   // panorama2.add( infospot2 );
	   
	   
		//뷰어 실행  //포이트 수만큼 숫자 붙이면서 바노라마 에드
	     const viewer = new PANOLENS.Viewer( { output: 'console' ,cameraFov:80} );
	     viewer.add( panorama1,panorama2,panorama3 );
	    
	    
	     
	    //$(".panolens-container").css('width', '75%');
	    //$(".panolens-container").css('height', '75%'); 
	
	
	  /*   const panorama4 = new PANOLENS.ImagePanorama( '/images/PANO0001_stitch13.jpg' );
	    const viewer4 = new PANOLENS.Viewer( { output: 'console' } );
	    viewer4.add( panorama4 );
	 */
	  
	    </script>
  
  
	<!-- <img src="images/PANO0001_stitch13.jpg" width="1" height="1"/> -->
	<div style="
		    position: absolute;
		    bottom: -50px;
		    left: 0;
		    "
	>
	 	<button style="
	 			font-weight: bold;
		    	font-size: 18px;
		    	background: #4caf50;
			    width: 100px;
			    height: 50px;
			    color: #fff;
			    border-radius: 20px;
			    border: none;
		    	" onclick="btn_click()">등록</button>
	 	<input type="text" class="inpSt01"/>
 	</div>
  </body>
  
  
</html>