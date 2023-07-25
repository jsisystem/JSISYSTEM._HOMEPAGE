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
	section.title, section.support {
	position: absolute;
    text-align: center;
    font-size: 52px;
    font-weight: 300;
    pointer-events: none;
    letter-spacing: 2px;
    color:#fff;
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
		  		  const panorama10 = new PANOLENS.ImagePanorama( '/images/oleum_Panorama/'+eName+'/DJI_00010.JPG' );
		  		  const panorama11 = new PANOLENS.ImagePanorama( '/images/oleum_Panorama/'+eName+'/DJI_00011.JPG' );
		  	  	  const panorama12 = new PANOLENS.ImagePanorama( '/images/oleum_Panorama/'+eName+'/DJI_00012.JPG' );
		  		  const panorama13 = new PANOLENS.ImagePanorama( '/images/oleum_Panorama/'+eName+'/DJI_00013.JPG' );
		  		  const panorama14 = new PANOLENS.ImagePanorama( '/images/oleum_Panorama/'+eName+'/DJI_00014.JPG' );
		  		  const panorama15 = new PANOLENS.ImagePanorama( '/images/oleum_Panorama/'+eName+'/DJI_00015.JPG' );
		  		  const panorama16 = new PANOLENS.ImagePanorama( '/images/oleum_Panorama/'+eName+'/DJI_00016.JPG' );
		  		  const panorama17 = new PANOLENS.ImagePanorama( '/images/oleum_Panorama/'+eName+'/DJI_00017.JPG' );
	        
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
				   var infospot1 = new PANOLENS.Infospot( 500, PANOLENS.DataImage.Info );
				   infospot1.position.set(datalink[i].coord1+200, datalink[i].coord2+200, datalink[i].coord3+200);
				   infospot1.addHoverText( datalink[i].linkTarget, 30 );
				   eval("panorama"+datalink[i].picNum+".add(infospot1);");
			   }
			    // panorama1.link( panorama2, linkPositions1[0] );
			    // panorama2.link( panorama1, linkPositions2[0] );
			    // panorama2.link( panorama3, linkPositions2[1] );
			    //panorama2.link( panorama, infospotPositions[1] );
			    
			    
			    
			    
			    // 전체 동적 코딩	끝
			    
			    //인포 등록 
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
  
	<!-- <img src="images/PANO0001_stitch13.jpg" width="1" height="1"/> -->
	<div style="
		    position: absolute;
		    top: 100%;
		    left: 0;
		    margin-top:10px;
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
		    	
	 	<label>한글명</label><input id="kName" type="text" class="inpSt01"/>
	 	<label>사진번호</label><input id="picNum" type="text" class="inpSt01"/><br>
	 	<label>좌표1</label><input id="coord1" type="text" class="inpSt01"/>
	 	<label>좌표2</label><input id="coord2" type="text" class="inpSt01"/>
	 	<label>좌표3</label><input id="coord3"type="text" class="inpSt01"/>
	 	<label>구분</label><input id="gubun" type="text" class="inpSt01"/><br>
	 	<label>링크번호</label><input id="linkTarget" type="text" class="inpSt01"/>
	 	<label>정보</label><input id="infoData" type="text" class="inpSt01"/>
 	</div>
 
  </body>
  <script>
 		
  </script>
  
</html>