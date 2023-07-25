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
	html, body {
	    margin: 0;
	    width: 100%;
	    height: 100%;
	    overflow: hidden;
    }
	
	
/* 	#container {
		width: 600px;
		height: 600px;
	}
	
	#panel {
		width: 320px;
		height: 240px;
		background-color: #fff;
	} */
	/* .panolens-container{
		width: 600px;
		height: 600px;
	} */
  </style>
  <body>
   
    
  <script src="js/three.min.js"></script>
  <script src="js/panolens.min.js"></script>
  <script src="js/panolens.js"></script>
    

	
  <script>
  

     var lookAtPositions = [
        new THREE.Vector3(-3659.64, -946.78, -5000.00),
        new THREE.Vector3(-5000.00, 1084.86, -2624.81)
      ];
    
	var infospotPositions = [
		new THREE.Vector3(5000.00, -2182.24, 2696.65),
		new THREE.Vector3(-1708.88, 1131.28, -5000.00)
	  ];
    
    
    /* const container = document.querySelector( '#container' ); */
    /* const panel = document.querySelector('#panel'); */

    const panorama = new PANOLENS.ImagePanorama(  '/images/oleum_Panorama/DJI_0008.JPG');
    		
    		
    		
   
    panorama.addEventListener( 'enter-fade-start', function(){
    viewer.tweenControlCenter( lookAtPositions[0], 1000 );
    } );
    
    
    
    const panorama2 = new PANOLENS.ImagePanorama( '/images/oleum_Panorama/DJI_0004.JPG.jpg ');
    panorama2.addEventListener( 'enter', function(){
      viewer.tweenControlCenter( lookAtPositions[1], 0 );
    } );

    panorama.link( panorama2, infospotPositions[0] );
    panorama2.link( panorama, infospotPositions[1] );
    //panorama2.link( panorama, infospotPositions[1] );
    
    const infospot = new PANOLENS.Infospot( 350, PANOLENS.DataImage.Info );
    const infospot2 = new PANOLENS.Infospot( 350, PANOLENS.DataImage.Info );
    infospot.position.set(-5000.00, 1890.22, 3444.62);
    infospot.addHoverText( '제주마', 30 );
    infospot2.position.set(-5000.00, 1832.75, -3732.97);
    infospot2.addHoverText( '제주마', 30 );
    
   
    panorama.add( infospot );
    panorama2.add( infospot2 );

    const viewer = new PANOLENS.Viewer( { output: 'console' ,cameraFov:80} );
    viewer.add( panorama, panorama2 );
    
    
   /*  
    $(".panolens-container").css('width', '75%');
    $(".panolens-container").css('height', '75%'); */


  /*   const panorama4 = new PANOLENS.ImagePanorama( '/images/PANO0001_stitch13.jpg' );
    const viewer4 = new PANOLENS.Viewer( { output: 'console' } );
    viewer4.add( panorama4 );
 */
  
    </script>
	<!-- <img src="images/PANO0001_stitch13.jpg" width="1" height="1"/> -->
	
  </body>
  
</html>