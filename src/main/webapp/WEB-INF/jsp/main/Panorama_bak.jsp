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
    <link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
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
	section.title, section.support {
		position: absolute;
	    text-align: center;
	    font-size: 52px;
	    font-weight: 300;
	    pointer-events: none;
	    letter-spacing: 2px;
	    color:#fff;
	}
	section.list {
		position: absolute;
	    text-align: center;
	    font-size: 18px;
	    font-weight: 300;
	    pointer-events: none;
	    letter-spacing: 300px;
	    color:#fff;
	    bottom:0%;
	    cursor: pointer;
	     
	    
	}
	.intro {
	    position: absolute;
	    text-align: right;
	    right:10px;
	    width: 100%;
	    padding: 20px 0;
	    color: #fff;	    
	    margin-left:auto;
    	top:-1%;
    	
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
      
	
	.test{
	cursor: pointer; 
	float: left; 
	width: 44px; 
	height: 100%; 
	background-size: 60%; 
	background-repeat: no-repeat; 
	background-position: center center; 
	user-select: none; 
	position: relative; 
	pointer-events: auto; 
	transform: rotate3d(0, 0, 0, 0deg);
	}
	
	
  </style>
  
   
    
 
  <body style="position:relative; overflow:visible;">
  
	  <script src="js/three.min.js"></script>
	  <script src="js/panolens.min.js"></script>
	  <script src="js/panolens.js"></script>
	    
	
		
	  <script>
	  	
	  
	  
	  
	  	  //오름 영문명 세션으로 받아오기
	 	  var eName = '<%=(String)session.getAttribute("eName")%>';
	 	  
	 	 function btn_click(){
			 
			  var kName = $("#kName").val();
			  var picNum = $("#picNum").val();
			  var coord1 = $("#coord1").val();
			  var coord2 = $("#coord2").val();
			  var coord3 = $("#coord3").val();
			  var gubun = $("#gubun").val();
			  var linkTarget = $("#linkTarget").val();
			  var infoData = $("#infoData").val();
			  
			  console.log("eName",eName) 
			  console.log("kName",kName)
			  console.log("picNum",picNum)
			  console.log("coord1",coord1)
			  console.log("coord2",coord2)
			  console.log("coord3",coord3)
			  console.log("linkTarget",linkTarget)
			  console.log("gubun",gubun)
			  
			  $.ajax({				
		        url: "<c:url value='/coordInsert.json'/>",		        
		        data:{"eName":eName,"kName":kName,"picNum":picNum,"coord1":coord1,"coord2":coord2,"coord3":coord3,"linkTarget":linkTarget,"gubun":gubun},
		        success: function(res) {
		        	console.log(res)
		        
		  		},
		  		error: function(jqXHR, textStatus, errorThrown) {
		  			alert("ERROR : " + textStatus + " : " + errorThrown);
		  		}
		  		
		  		
		        });
		  	}
	 	  
	    //DB에서 해당오름 포인트 수확인 후 포인트 수 가져오기
	    $.ajax({
	        url: "<c:url value='/coordPoint.json'/>",     
	        data:{"eName":eName},
	        success: function(res) {
	        	
	        	console.log(res);
	        	var dataview = res.dataView;
	        	var datalink = res.dataLink;
	        	var datainfo = res.dataInfo;
	        	
	      		  const panorama1 = new PANOLENS.ImagePanorama( '/images/oleum_Panorama/'+eName+'/DJI_0001.JPG');
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
			   
			   for(var i=1;i<dataview.length;i++){
				    eval("panorama"+dataview[i].picNum+".addEventListener( 'enter', function(){	viewer.tweenControlCenter( (new THREE.Vector3("+dataview[i].coord1+","+ dataview[i].coord2+","+ dataview[i].coord3+")), 0 )} );")       
			   }
			   
			       
			    
		
				
			    //링크 등록
			     //panorama(picNum).link(panoramaTargetNum),new THREE.Vector3(dataview[i].coord1,dataview[i].coord2,dataview[i].coord3)
			   for(var i=0;i<datalink.length;i++){
				   //console.log("picknum:"+datalink[i].picNum+"링크 : "+datalink[i].linkTarget)
				   eval("panorama"+datalink[i].picNum+".link( panorama"+datalink[i].linkTarget+", (new THREE.Vector3("+datalink[i].coord1+","+ datalink[i].coord2+","+ datalink[i].coord3+")) );");
				   var infospot1 = new PANOLENS.Infospot( 100, PANOLENS.DataImage.Info );
				   infospot1.position.set(datalink[i].coord1+200, datalink[i].coord2+200, datalink[i].coord3+200);
				   infospot1.addHoverText( datalink[i].linkTarget, 30 );
				   eval("panorama"+datalink[i].picNum+".add(infospot1);");
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
			     viewer.add( panorama1,panorama2,panorama3,panorama4,panorama5,panorama6,panorama7,panorama8,panorama9,panorama10,panorama11,panorama12,panorama13,panorama14,panorama15,panorama16,panorama17);
			     
			    
			     
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
    <section class="support">
          <header id="oleumTitle"></header>
          
    </section>
    
    <section class="intro">
	    <select name="language" >
			    <option value="none">=== 선택 ===</option>
			    <option value="korean">한국어</option>
			    <option value="english">영어</option>
			    <option value="chinese">중국어</option>
			    <option value="spanish">스페인어</option>
		</select>
	</section>
  
	<!-- <img src="images/PANO0001_stitch13.jpg" width="1" height="1"/> -->
	
	
	<div id="desc-container" style="display: none; top: 0px; position: absolute; transform: translate(265.686px, 17.535px);" class="panolens-infospot">
      <img class="img" src="/images/oleum/yeongjusan.png"></img>
      <div class="title">China's Forgotten War</div>
      <div class="text">WWII came to the small town of Tai’erzhuang in central China – and it was never the same again. The town was strategically placed, on the north-south transport railway corridor and the ancient Grand Canal, and so was a focus of the Japanese Imperial army as it advanced. Li Jing Shan was only a child when his family fled the fighting. They returned to find their home, and most of the town, in ruins.</div>
    </div>
	  
	
 
  </body>
  <script>
 		
  </script>
  
</html>