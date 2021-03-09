<%--
  Class Name : EgovAboutSite.jsp
  Description : 샘플화면 - 사이트소개(sample)
  Modification Information
 
      수정일         수정자                   수정내용
    -------    --------    ---------------------------
     2011.08.31   JJY       경량환경 버전 생성
 
    author   : 실행환경개발팀 JJY
    since    : 2011.08.31 
--%>
<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="robots" content="index, follow">
    <title>제이시스에 오신것을 환영합니다.</title>
     <link href="<c:url value='/'/>../../css/main.css" rel="stylesheet" type="text/css" >
    <link href="<c:url value='/'/>../../css/common.css" rel="stylesheet" type="text/css" >
    <link href="<c:url value='/'/>../../css/sub.css" rel="stylesheet" type="text/css" >

    <script src="http://ajax.googleapis.com/ajax/libs/jquery/1/jquery.min.js"></script>
    <script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
    <script type="text/javascript" src="<c:url value='/js/main.js' />"></script>

    <!--[if lt IE 9]>
    <script src="js/IE9.js"></script>
    <script src="js/html5shiv.js"></script>
    <script src="js/respond.min.js"></script>
    <![endif]-->
    <script charset="UTF-8" class="daum_roughmap_loader_script" src="https://ssl.daumcdn.net/dmaps/map_js_init/roughmapLoader.js"></script>
</head>


<body>
    <header>
       <c:import url="/EgovPageLink.do?link=main/inc/MainHeader" />
    </header>
    <section class="subCont">
        <div class="subHeader subBg01">
           <div class="container">
                <h2 class="subTit">회사소개</h2>
            </div>
            <div class="subHeaderBar">
                <div class="container">
                    <div id="localInfo">
                        <ul class="innerWrap">
                            <li>
                                <a href="">
                                    <span class="home">
                                        <span class="hide"></span>
                                    </span>
                                </a>
                            </li>
                            <li><a href="#">회사소개</a></li>
                            <li>
                                <a href="#" class="openDep2">찾아오시는 길
                                    <span class="drop"></span>
                                </a>
                                <ul class="localDep2">
                                    <li><a href="#LINK" onclick="javascript:fn_main_headPageMove('11','main/CEOWelcom')">CEO 인사말</a></li>
                                    <li><a href="#LINK" onclick="javascript:fn_main_headPageMove('12','main/JsisHistory')">연혁</a></li>
                                    <li><a href="#LINK" onclick="javascript:fn_main_headPageMove('13','main/License')">면허 및 인증</a></li>
                                    <li><a href="#LINK" onclick="javascript:fn_main_headPageMove('14','main/Organization')">조직도</a></li>
                                    <li><a href="#LINK" onclick="javascript:fn_main_headPageMove('15','main/MapNavi')">찾아오시는 길</a></li>
                                </ul>
                            </li>
                        </ul>
                    </div>
                </div>        
            </div>
        </div>
        <div class="container">
            <div class="subDesc sub01_05">
                <h3 class="subTit02">Directions</h3>
                <div class="sub01_05Wrap">
                    <div class="tapMenu01"> 
                        <div id="com" class="on">제주본사</div>
                        <div id="yun">연구소</div>
                    </div>
                    <div class="contents">
                       <div id="map">
                            <h4 class="subTit03">제주본사</h4>
                            <p class="adress">63308  제주특별자치도 제주시 연신로 188-20, 202호</p>
                            <p class="tel">TEL. 064.711.0304 FAX. 064.711.0341</p>
                            <div class="map">
                            <!-- * 카카오맵 - 지도퍼가기 -->
								<!-- 1. 지도 노드 -->
								<div id="daumRoughmapContainer1603093021947" class="root_daum_roughmap root_daum_roughmap_landing"></div>
								
								<!--
									2. 설치 스크립트
									* 지도 퍼가기 서비스를 2개 이상 넣을 경우, 설치 스크립트는 하나만 삽입합니다.
								-->
								
								
								<!-- 3. 실행 스크립트 -->
								<script charset="UTF-8">
								
									new daum.roughmap.Lander({
										"timestamp" : "1603093021947",
										"key" : "22itw",
										"mapWidth" : "1260",
										"mapHeight" : "577"
									}).render();
								
								</script>
                            
                            </div>
                       </div>
                       <div class="map_2">
                            <h4 class="subTit03">연구소</h4>
                            <p class="adress">서울특별시 금천구 서부샛길 606 대성디폴리스지식산업센터 A동 911호</p>
                            <p class="tel">TEL. 02-861-9602</p>
                            <div class="map">
								<!-- * 카카오맵 - 지도퍼가기 -->
								<!-- 1. 지도 노드 -->
								<div id="daumRoughmapContainer1603093900849" class="root_daum_roughmap root_daum_roughmap_landing"></div>
								
								<!--
									2. 설치 스크립트
									* 지도 퍼가기 서비스를 2개 이상 넣을 경우, 설치 스크립트는 하나만 삽입합니다.
								-->
								<!-- <script charset="UTF-8" class="daum_roughmap_loader_script" src="https://ssl.daumcdn.net/dmaps/map_js_init/roughmapLoader.js"></script> -->
								
								<!-- 3. 실행 스크립트 -->
								<!-- <script charset="UTF-8">
									new daum.roughmap.Lander({
										"timestamp" : "1603093900849",
										"key" : "22iui",
										"mapWidth" : "1260",
										"mapHeight" : "577"
									}).render();
								</script> -->
                            
                            </div>
                       </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <footer>
        <c:import url="/EgovPageLink.do?link=main/inc/MainFooter" />
</body>
</html>