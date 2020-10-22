<%--
  Class Name : EgovProductInfo.jsp
  Description : 샘플화면 - 대표제품 소개페이지(sample)
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
</head>

<body>
    <header>
        <c:import url="/EgovPageLink.do?link=main/inc/MainHeader" />
    </header>
    <section class="subCont">
        <div class="subHeader subBg02">
           <div class="container">
                <h2 class="subTit">사업소개</h2>
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
                            <li><a href="#">사업소개</a></li>
                            <li>
                                <a href="#" class="openDep2">공간정보사업
                                    <span class="drop"></span>
                                </a>
                                <ul class="localDep2">
                                    <li><a href="#LINK" onclick="javascript:fn_main_headPageMove('21','main/SpaceInformationProject')">공간정보사업</a></li>
                                    <li><a href="#LINK" onclick="javascript:fn_main_headPageMove('22','main/SystemProject')">시스템사업</a></li>
                                    <li><a href="#LINK" onclick="javascript:fn_main_headPageMove('23','main/AviationBusiness')">무인항공사업</a></li>
                                    <li><a href="#LINK" onclick="javascript:fn_main_headPageMove('24','main/ResearchProject')">공간연구사업</a></li>
                                </ul>
                            </li>
                        </ul>
                    </div>
                </div>        
            </div>
        </div>
        <div class="container">
            <div class="subDesc sub02_01">
                <h3 class="subTit02">공간정보사업</h3>
                <div class="sub02header">
                    <h4>Space Information Project</h4>
                    <p>4차산업혁명을 이끄는 공간정보 사업의 고정밀 측량서비스를 제공하며 수치지형도 제작 및 편집, GIS DB구축,<br>항공사진 촬영 및 영상지도 제작등 공간정보 융복합 서비스를 시행하고 있습니다.</p>
                </div>
                <div class="subContWrap">
                    <div class="itemWrap">
                        <div class="item">
                            <div class="itemImg">
                                <img src="images/puble_img/sub02_01_img01.png" alt="">
                            </div>
                            <div class="itemCont">
                                <h5>GIS DB 구축</h5>
                                <ul class="itemList">
                                    <li>지하시설물도 제작</li>
                                    <li>수치지형도 제작 및 DB 구축</li>
                                    <li>지적정보 DB 구축</li>
                                    <li>도시계획정보체계 DB 구축</li>
                                    <li>환경, 방재 및 재난재해 DB 구축</li>
                                    <li>국가 기본지리정보 DB 구축</li>
                                    <li>생활지리정보 DB 구축</li>
                                    <li>교통 DB 구축</li>
                                    <li>공간정보 연계 속성 DB 구축</li>
                                </ul>
                                <p class="itemDesc">수치지형도 제작 및 편집 /GIS DB구축 사업</p>
                            </div>
                        </div>
                        <div class="item">
                            <div class="itemImg">
                                <img src="images/puble_img/sub02_01_img02.png" alt="">
                            </div>
                            <div class="itemCont">
                                <h5>공공 및 일반 측량</h5>
                                <ul class="itemList">
                                    <li>지하시설물 조사 측량</li>
                                    <li>국가/공공기준점 측량</li>
                                    <li>시공측량</li>
                                    <li>정밀안전진단</li>
                                    <li>문화재측량</li>
                                    <li>수심측량</li>
                                </ul>
                                <p class="itemDesc">지구중심 타원체와 지구 곡률을 고려한 정밀 측량으로서 기준점의 측지학적 위치 및 지구의 형상을 경정하는 중요한 측량. 시공전 확인측량을 실시하여 설계도서 등과의 사이점을 확인 하는 측량</p>
                            </div>
                        </div>
                    </div>
                    <div class="itemWrap">
                        <div class="item hAuto pb20">
                            <div class="itemImg">
                                <img src="images/puble_img/sub02_01_img03.png" alt="">
                            </div>
                            <div class="itemCont">
                                <h5>정사영상 지도 제작</h5>
                                <ul class="itemList hAuto">
                                    <li>정사영상 제작</li>
                                </ul>
                                <p class="itemDesc">유무인 항공사진을 활용한 정사영상 제작</p>
                            </div>
                        </div>
                        <div class="item hAuto pb20">
                            <div class="itemImg">
                                <img src="images/puble_img/sub02_01_img04.png" alt="">
                            </div>
                            <div class="itemCont">
                                <h5>위성영상 정보</h5>
                                <ul class="itemList hAuto">
                                    <li>위성영상 정보/분석</li>
                                </ul>
                                <p class="itemDesc">고해상도 위성영상 및 GIS 기법을 활용한 공간분석 및 고해상도 공간정보 제작</p>
                            </div>
                        </div>
                    </div>
                    <div class="itemWrap">
                        <div class="item hAuto pb20">
                            <div class="itemImg">
                                <img src="images/puble_img/sub02_01_img05.png" alt="">
                            </div>
                            <div class="itemCont">
                                <h5>정밀도로지도 제작</h5>
                                <p class="itemDesc">MMS 장비를 활용한 자율주행시대 핵심 요소인 정밀도로지도 구축</p>
                            </div>
                        </div>
                        <div class="item hAuto pb20">
                            <div class="itemImg">
                                <img src="images/puble_img/sub02_01_img06.png" alt="">
                            </div>
                            <div class="itemCont">
                                <h5>3D 네트워크 구축</h5>
                                <p class="itemDesc">표준노드링크와 고해상도 DEM을 활용한 3차원 네트워크 구축</p>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <footer>
        <c:import url="/EgovPageLink.do?link=main/inc/MainFooter" />
    </footer>
</body>
</html>