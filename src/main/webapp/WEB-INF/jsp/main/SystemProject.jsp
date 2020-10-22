<%--
  Class Name : EgovServiceInfo.jsp
  Description : 샘플화면 - 대표서비스 상세조회화면(sample)
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
                                <a href="#" class="openDep2">시스템사업
                                    <span class="drop"></span>
                                </a>
                                <ul class="localDep2">
 									<li><a href="#LINK" onclick="javascript:fn_main_headPageMove('21','main/SpaceInformationProject')">공간정보사업</a></li>
                                    <li><a href="#LINK" onclick="javascript:fn_main_headPageMove('22','main/SystemProject')">시스템사업</a></li>
                                    <li><a href="#LINK" onclick="javascript:fn_main_headPageMove('23','main/AviationBusiness')">무인항공사업</a></li>
                                    <li><a href="#LINK" onclick="javascript:fn_main_headPageMove('24','main/ResearchProject')">공간연구사업</a></li>                                </ul>
                            </li>
                        </ul>
                    </div>
                </div>        
            </div>
        </div>
        <div class="container">
            <div class="subDesc sub02_01">
                <h3 class="subTit02">시스템사업</h3>
                <div class="sub02header">
                    <h4>System business</h4>
                    <p>공간정보사업을 기반으로 스마트한 공간정보 활용 및 데이터통합 시스템 구축, 의사결정 지원 시스템 공간정보관련<br>각종 솔루션개발을 통하여 통합공간정보시스템 구축하고 있습니다.</p>
                </div>
                <div class="subContWrap">
                    <div class="itemWrap">
                        <div class="item hAuto pb20">
                            <div class="itemImg">
                                <img src="images/puble_img/sub02_02_img01.png" alt="">
                            </div>
                            <div class="itemCont">
                                <h5>공간정보활용</h5>
                                <ul class="itemList hAuto">
                                    <li>감귤 관측 시스템 구축</li>
                                </ul>
                                <p class="itemDesc">감귤기본통계를 고도화 하기 위해 통계청 위상영상 촬영 판독자료와 농림 축산시품부 스마트팜맵 데이터 베이스를 기초로 한 공간정보 기반의 감귤 관측 시스템 구축</p>
                            </div>
                        </div>
                        <div class="item hAuto pb20">
                            <div class="itemImg">
                                <img src="images/puble_img/sub02_02_img02.png" alt="">
                            </div>
                            <div class="itemCont">
                                <h5>공간정보데이터</h5>
                                <ul class="itemList hAuto">
                                    <li>통합 및 의사결정 지원 시스템</li>
                                </ul>
                                <p class="itemDesc">공간정보 시스템의 편의성.연속성/정확도 확보를 위해 SDW 구축 및 API서비스, 의사결정 지원 시스템 구축, 환경오염원에 대한 오염지도 제작, GNSS를 활용한 수사업무 지원 시스템 구축, RDBMS 솔루션 도입</p>
                            </div>
                        </div>
                    </div>
                    <div class="itemWrap">
                        <div class="item hAuto">
                            <div class="itemImg">
                                <img src="images/puble_img/sub02_02_img03.png" alt="">
                            </div>
                            <div class="itemCont">
                                <h5>위성항법 시스템</h5>
                                <ul class="itemList hAuto">
                                    <li>행정업무 시스템 구축</li>
                                </ul>
                                <p class="itemDesc">위법항법 사수탬 (GNSS)을 도입 · 활용한 행정정보 및 위치정보서비스 품질 및 만족도 향상을 위한 체계적인 자율관리 교통 관제 시스템 구축</p>
                            </div>
                        </div>
                        <div class="item hAuto">
                            <div class="itemImg">
                                <img src="images/puble_img/sub02_02_img04.png" alt="">
                            </div>
                            <div class="itemCont">
                                <h5>3차원 경로기반</h5>
                                <ul class="itemList hAuto">
                                    <li>전기차 전력 소모량 예측 시스템</li>
                                </ul>
                                <p class="itemDesc">전기차 연료 소모량에 영향을 미치는 요인중 정적 정보인 경사 정보를 반영한 3차원 경로기반의 전기차 전력 소모량 예측 시스템 개발</p>
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