<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="initial-scale=1, maximum-scale=1, user-scalable=no, width=device-width, shrink-to-fit=no">
    <meta http-equiv="X-UA-Compatible" content="IE=11">

    <title>제이시스 파노라마</title>
    
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1/jquery.min.js"></script>
    <script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
    <link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
    <script src="https://use.fontawesome.com/releases/v5.15.4/js/all.js"   data-auto-a11y="true"></script>
   <%--  <script type="text/javascript" src="<c:url value='/js/main.js' />"></script> --%>
    <style>
    @font-face {
	  font-family: 'nanum';
	  font-style: normal;
	  font-weight: 400;
	  src: url(../font/NanumGothic.eot);
	  src: url(../font/NanumGothic.eot?#iefix) format('embedded-opentype'),
	       url(../font/NanumGothic.woff) format('woff'),
	       url(../font/NanumGothic.ttf) format('truetype');
	}
    body,h1,h2,h3,h4,h5,h6{font-family: 'nanum';}
    
	html{
	  margin: 0;
	  width: 100%;
	  height: 100%;
	  overflow: hidden;
    }
	body {
	
	  margin: 0;
	  width: 100%;
	  height: 100%;
	  overflow: hidden;
    }
    div{
    	display: block;
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
	section.title {
		position: absolute;
		text-align: left;
	    text-align: center;
	    font-size: 52px;
	    font-weight: 300;
	    pointer-events: none;
	    letter-spacing: 2px;
	    color:#fff;
	}
	
	
	.intro {
	    position: absolute;
	    text-align: right;
	    right:10px;
	    width:100%;
	    padding: 20px 0;
	    color: #fff;	    
	    margin-left:auto;
    	top:-1%;
    	hight:100px; !important;
    	
	}
	.support_title {
		position:absolut;
		text-align: left;
		float:left;
		margin-left:20px;
	    font-size: 52px;
	    width:400px;
	    pointer-events: none;
	    letter-spacing: 2px;
	    color:#fff;
	}
	.support_sub {
		position:inherit;
		top:11px;
		flaot:right;
		right:20px;;
		margin-right:100px;
	    letter-spacing: 2px;
	    color:#fff;
	    margin-left:auto;
	}
	
	#desc-container {
        max-width: 500px;
        max-height: 500px;
        min-width: 200px;
        min-height: 250px;
        background: #fff;
        color: #000;
        border-radius: 3px;
        overflow: auto;
        -webkit-overflow-scrolling: touch;
      }
      #desc-container > img {
        border: none;
        width:50%;
      }
      
	
	
	
  </style>
   
  </head>
  <script>
 

  </script>
 
  
   
    
 
  <body style="position:relative; overflow:visible;" >
  	<div  id="bodydiv">
  
	  <!-- <script src="/js/three.min.js"></script> -->

	 <!--  <script src="/js/jjuis/three.min.js"></script>
	  <script src="/js/jjuis/panolens.min.js"></script>
	  <script src="/js/jjuis/panolens.js"></script> -->
 	  <script src= '/js/three.min.js'></script> 	  
	  <script src= "/js/panolens.min.js"></script>
	  <script src= "/js/panolens.js"></script>
	  <script src= '/js/LittlePlanet.js'></script>
	    
	
		
	  <script>
	 

	  	
	  	function homeBtnClick(){
	  		location.href ='PanoramaList_boot.do'
	  	}
	  
	  	  //오름 영문명 세션으로 받아오기
	 	var eName = '<%=(String)session.getAttribute("eName")%>';
	 	  
	 	
	 	function changOleumSelect(){
	    	var langSelect = document.getElementById("oleumList");
	    	var selectValue = langSelect.options[langSelect.selectedIndex].value;

	    	location.href = '/Panorama.do?eName='+selectValue

	    }
	 	 $.ajax({				
		        url: "<c:url value='/oleumList.json'/>",		        
		        success: function(res) {
		        	
		        	console.log(eName);
		        	for(var i = 0; i < res.airList.length; i++){
		        		if(res.airList[i].eName == eName){
		        			var option = $("<option selected disabled value='"+res.airList[i].eName+"'>"+res.airList[i].kName+"</option>");
		        		}
		        		else{
		        			var option = $("<option value='"+res.airList[i].eName+"'>"+res.airList[i].kName+"</option>");
		        		}
		                $('#oleumList').append(option);
		            }
		        
		  		},
		  		error: function(jqXHR, textStatus, errorThrown) {
		  			alert("ERROR : " + textStatus + " : " + errorThrown);
		  		}
		  		
		  		
		        });
	    //DB에서 해당오름 포인트 수확인 후 포인트 수 가져오기
	    $.ajax({
	        url: "<c:url value='/coordPoint.json'/>",     
	        data:{"eName":eName},
	        success: function(res) {
	        	
	        	var dataview = res.dataView;
	        	var datalink = res.dataLink;
	        	var datainfo = res.dataInfo;
	        	
	        	console.log(res);
	        	for(var i=1;i<=dataview.length;i++){
	        		var temp;
	        		if(i<10){
	        			temp = "00"+i
	        		}else if(i<100){
	        			temp = "0"+i
	        		}else{
	        			temp = i
	        		}
	        		
	        		const panorama = new PANOLENS.ImagePanorama( '/images/oleum_Panorama/'+eName+'/'+eName+'_'+temp+'.JPG');
	        		
	        		var name =  eval('var panorama'+i+' = panorama')
	        	}
	        	
	      		  /* const panorama1 = new PANOLENS.ImagePanorama( '/images/oleum_Panorama/'+eName+'/DJI_0001.JPG');
		  		  const panorama2 = new PANOLENS.ImagePanorama( '/images/oleum_Panorama/'+eName+'/DJI_0002.JPG' );
		  		  const panorama3 = new PANOLENS.ImagePanorama( '/images/oleum_Panorama/'+eName+'/DJI_0003.JPG' );
		  		  const panorama4 = new PANOLENS.ImagePanorama( '/images/oleum_Panorama/'+eName+'/DJI_0004.JPG' );
		  		  const panorama5 = new PANOLENS.ImagePanorama( '/images/oleum_Panorama/'+eName+'/DJI_0005.JPG' );
		  		  const panorama6 = new PANOLENS.ImagePanorama( '/images/oleum_Panorama/'+eName+'/DJI_0006.JPG' );
		  		  const panorama7 = new PANOLENS.ImagePanorama( '/images/oleum_Panorama/'+eName+'/DJI_0007.JPG' );
		  		  const panorama8 = new PANOLENS.ImagePanorama( '/images/oleum_Panorama/'+eName+'/DJI_0008.JPG' );
		  		  const panorama9 = new PANOLENS.ImagePanorama( '/images/oleum_Panorama/'+eName+'/DJI_0009.JPG' );
		  		  const panorama10 = new PANOLENS.ImagePanorama( '/images/oleum_Panorama/'+eName+'/DJI_0010.JPG' );
		  		  const panorama11 = new PANOLENS.ImagePanorama( '/images/oleum_Panorama/'+eName+'/DJI_0011.JPG' );
		  	  	  const panorama12 = new PANOLENS.ImagePanorama( '/images/oleum_Panorama/'+eName+'/DJI_0012.JPG' );
		  		  const panorama13 = new PANOLENS.ImagePanorama( '/images/oleum_Panorama/'+eName+'/DJI_0013.JPG' );
		  		  const panorama14 = new PANOLENS.ImagePanorama( '/images/oleum_Panorama/'+eName+'/DJI_0014.JPG' );
		  		  const panorama15 = new PANOLENS.ImagePanorama( '/images/oleum_Panorama/'+eName+'/DJI_0015.JPG' );
		  		  const panorama16 = new PANOLENS.ImagePanorama( '/images/oleum_Panorama/'+eName+'/DJI_0016.JPG' );
		  		  const panorama17 = new PANOLENS.ImagePanorama( '/images/oleum_Panorama/'+eName+'/DJI_0017.JPG' );
	         */
		  		  //오름 이미지 포인트 수만큼 view 좌표 등록
		  		 // var lookAtPositions = []
		  		  /* for(var i=0; i<dataview.length;i++){
		  		  		lookAtPositions.push(new THREE.Vector3(dataview[i].coord1,dataview[i].coord2,dataview[i].coord3))  
		  		  }
		  		   */
		  			  
		  			  
		  			  				   /* new THREE.Vector3(res.data[0].coord1,res.data[0].coord2,res.data[0].coord3),
		  							   new THREE.Vector3(res.data[1].coord1,res.data[1].coord2,res.data[1].coord3),
		  							   new THREE.Vector3(res.data[2].coord1,res.data[2].coord2,res.data[2].coord3),
		  							   new THREE.Vector3(res.data[3].coord1,res.data[3].coord2,res.data[3].coord3),
		  							   new THREE.Vector3(res.data[4].coord1,res.data[4].coord2,res.data[4].coord3),
		  							   new THREE.Vector3(res.data[5].coord1,res.data[5].coord2,res.data[5].coord3),
		  							   new THREE.Vector3(res.data[6].coord1,res.data[6].coord2,res.data[6].coord3),
		  							   new THREE.Vector3(res.data[7].coord1,res.data[7].coord2,res.data[7].coord3),
		  							   new THREE.Vector3(res.data[8].coord1,res.data[8].coord2,res.data[8].coord3),
		  							   new THREE.Vector3(res.data[9].coord1,res.data[9].coord2,res.data[9].coord3),
		  						       new THREE.Vector3(res.data[10].coord1,res.data[10].coord2,res.data[10].coord3),
		  							   new THREE.Vector3(res.data[11].coord1,res.data[11].coord2,res.data[11].coord3) */
		  			
		  		  /* 
		  		 var temp = 0;
		  	     //linkPositions에 변수 생성
		  	     for(var i=0;i<datalink.length;i++){
		  	    	if(temp != datalink[i].picNum ){
		  	     		eval("var linkPositions"+(i+1)+"=[];")
		  	     		temp = datalink[(i)].picNum
		  	    	}
		  	     }
		  	     
		  	     //gubun컬럼에서 link를 가져와서 이미지를 연결 해준다.
		  	     for(var i=0;i<datalink.length;i++){
		  	    	eval("linkPositions"+datalink[i].picNum+".push(new THREE.Vector3("+datalink[i].coord1+","+datalink[i].coord2+","+ datalink[i].coord3+"))");
		  	     } */
		  	   //linkPositions1.push(new THREE.Vector3(5000.00, -1750.39, -3696.07));
		  	   
		  
			   
			    
				/* var infospotPositions = [   //인포 위치 설정
					new THREE.Vector3(5000.00, -2182.24, 2696.65),
					new THREE.Vector3(-1708.88, 1131.28, -5000.00)
				  ]; */
			    
			    
			     //const container = document.querySelector( '#container' ); 
			     //const panel = document.querySelector('#panel'); 
			     
			     
				//뷰어에서 표출되는 오름타이틀
			   $("#oleumTitle").text(dataview[0].kName);
			    		
			    		
			   // 동적 코딩	
			   //시작 포지션 설정  lookatposition-1 배열 불러와서 시작포지션 설정
			   panorama1.addEventListener( 'enter-fade-start', function(){
			        viewer.tweenControlCenter( (new THREE.Vector3(dataview[0].coord1, dataview[0].coord2, dataview[0].coord3)), 1000 );
			   } );    
			   
			   for(var i=0;i<dataview.length;i++){
				    eval("panorama"+dataview[i].picNum+".addEventListener( 'enter', function(){	viewer.tweenControlCenter( (new THREE.Vector3("+dataview[i].coord1+","+ dataview[i].coord2+","+ dataview[i].coord3+")), 0 )} );")       
			   }
			   
			       
			    
		
				
			    //링크 등록
			     //panorama(picNum).link(panoramaTargetNum),new THREE.Vector3(dataview[i].coord1,dataview[i].coord2,dataview[i].coord3)
			   for(var i=0;i<datalink.length;i++){
				   //console.log("picknum:"+datalink[i].picNum+"링크 : "+datalink[i].linkTarget)
				   eval("panorama"+datalink[i].picNum+".link( panorama"+datalink[i].linkTarget+", (new THREE.Vector3("+datalink[i].coord1+","+ datalink[i].coord2+","+ datalink[i].coord3+")),200 );");
				   
				   
				   /* var infospot1 = new PANOLENS.Infospot( 199 );
				   infospot1.position.set(datalink[i].coord1, datalink[i].coord2, datalink[i].coord3);
				   infospot1.addHoverText( datalink[i].linkTarget, 40 );
				   eval("panorama"+datalink[i].picNum+".add(infospot1);"); */
			   }
			    
			  /*  for(var i=0;i<datainfo.length;i++){
				   //console.log("picknum:"+datalink[i].picNum+"링크 : "+datalink[i].linkTarget)
				  
				   var infospot1 = new PANOLENS.Infospot( 100, PANOLENS.DataImage.Info );
				   infospot1.position.set(datainfo[i].coord1, datainfo[i].coord2, datainfo[i].coord3);
				   infospot1.addHoverText( datainfo[i].infoData, 30 );
				   eval("panorama"+datainfo[i].picNum+".add(infospot1);");
			   } */
			    // panorama1.link( panorama2, linkPositions1[0] );
			    // panorama2.link( panorama1, linkPositions2[0] );
			    // panorama2.link( panorama3, linkPositions2[1] );
			    //panorama2.link( panorama, infospotPositions[1] );
			    
			    
			    
			    
			    // 전체 동적 코딩	끝
			    
			    //인포 등록 (이미지,내용 )
			    /* for(var i=0;i<datainfo.length;i++){
				    var infospot = new PANOLENS.Infospot( 350, PANOLENS.DataImage.Info );
				    infospot.position.set(datainfo[i].coord1, datainfo[i].coord2, datainfo[i].coord3);
				    infospot.addHoverElement( document.getElementById( 'desc-container'), 30 );
				    eval("panorama"+datainfo[i].picNum+".add(infospot);");
			    } */
			    
			   for(var i=0;i<datainfo.length;i++){
				    var infospot = new PANOLENS.Infospot( 350, PANOLENS.DataImage.Info );
				    infospot.position.set(datainfo[i].coord1, datainfo[i].coord2, datainfo[i].coord3);
				    infospot.addHoverText( datainfo[i].infoData, 30 );
				    eval("panorama"+datainfo[i].picNum+".add(infospot);");
			    }
			   
				//뷰어 실행  //포이트 수만큼 숫자 붙이면서 바노라마 에드
			     const viewer = new PANOLENS.Viewer( { output: 'console' ,cameraFov:80} );
			     for(var i=1;i<=dataview.length;i++){
			    	 eval("viewer.add( panorama"+i+")");
			     }
			    

			     $(".panolens-container").attr('id', 'bodydiv');
			     /* $("#bodydiv").on('mousewheel',function(e){
			    	 var wheelDelta = e.originalEvent.wheelDelta;
			    	 
						if(wheelDelta > 0){

							console.log("up");

							$(this).scrollLeft(-wheelDelta + $(this).scrollLeft());

						}else{

						console.log("down");

							$(this).scrollLeft(-wheelDelta + $(this).scrollLeft());

						}
			     }) */
			    
			    panorama1.addEventListener("click", function(e){
			    	
			    	console.log(e)
			    	  if (e.intersects.length > 0) return;
			    	  const a = viewer.raycaster.intersectObject(viewer.panorama, true)[0].point;
			    	  console.log('click panorama\n', e, 'point\n', a);
			    	});
			   /*  panorama1.on('mousewheel',function(e){
			     var wheelDelta = e;
			     	PANOLENS.LittlePlanet.prototype.onMouseWheel(wheelDelta)
			     }) */
			     
			    //$(".panolens-container").css('width', '75%');
			    //$(".panolens-container").css('height', '75%'); 
			
			
			  /*   const panorama4 = new PANOLENS.ImagePanorama( '/images/PANO0001_stitch13.jpg' );
			    const viewer4 = new PANOLENS.Viewer( { output: 'console' } );
			    viewer4.add( panorama4 );
			 */
	        
	        }   
	    });
	  
		//이미지 리스트  (뷰 포인트 수만큼 이미지 생성)
		  
	  
	  /* $.ajax({
            url: "<c:url value='/afterSchool/afterLecture/tuitionFee/overlay/view.cs' />",
            type: "POST",
            data: {
                schId: form.schId.value,
                startDate: form.startDate.value,
                endDate: form.endDate.value
            },
            dataType: "html",
            success: function (res) {
                $('[evt-id=data]').html(res);
            },
            complete : function(){
                searchChild(form);
            }
        }); */
	      
	     
	  
	  
	</script>
    <section class="intro">
	        <header id="oleumTitle" class='support_title'></header>
	        <span id="homeBtn" class='support_sub' onclick="homeBtnClick();" style='font-size:24px'><i class='fas fa-home' ></i></span>
	        <select id="oleumList" name="oleumName" onmousedown="if(this.options.length>8){this.size=8;}"  onchange='changOleumSelect();' onblur="this.size=0;">
		</select>	 
	    	
	</section>
  
	<!-- <img src="images/PANO0001_stitch13.jpg" width="1" height="1"/> -->
	
	
	  
	
 	</div>
  </body>

  
</html>