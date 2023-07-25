  

var lookAtPositions = [
        new THREE.Vector3(-3659.64, -946.78, -5000.00),
        new THREE.Vector3(-5000.00, 1084.86, -2624.81)
      ];
    
	var infospotPositions = [
		new THREE.Vector3(316.72, 1621.59, -5000.00),
		new THREE.Vector3(-5000.00, 1084.86, -2624.81)
	  ];
    
    
    /* const container = document.querySelector( '#container' ); */
    /* const panel = document.querySelector('#panel'); */

    const panorama = new PANOLENS.ImagePanorama( '../images/field.jpg' );
    panorama.addEventListener( 'enter-fade-start', function(){
    viewer.tweenControlCenter( lookAtPositions[0], 1000 );
    } );
    
    
    
    const panorama2 = new PANOLENS.ImagePanorama( '../images/cabin.jpg' );
    panorama2.addEventListener( 'enter', function(){
      viewer.tweenControlCenter( lookAtPositions[1], 0 );
    } );

    panorama.link( panorama2, infospotPositions[0] );
    panorama.link( panorama2, infospotPositions[1] );
    //panorama2.link( panorama, infospotPositions[1] );
    
    const infospot = new PANOLENS.Infospot( 350, PANOLENS.DataImage.Info );
    infospot.position.set(-3660.26, 19.80, -5000.00);
    infospot.addHoverText( '눈박이오름', 30 );
   
    panorama.add( infospot );

    const viewer = new PANOLENS.Viewer( { output: 'overlay' ,cameraFov:100} );
    viewer.add( panorama, panorama2 );
    