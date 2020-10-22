<%--
  Class Name : EgovAboutSite.jsp
  Description : 샘플화면 - 자료실목록조회(sample)
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
</head>

<body>
<header>
        <c:import url="/EgovPageLink.do?link=main/inc/MainHeader" />
</header>
    <section class="subCont">
        <div class="subHeader subBg03">
            <div class="container">
                <h2 class="subTit">장비보유현황</h2>
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
                            <li><a href="#">장비보유현황</a></li>
                            <li>
                                <a href="#" class="openDep2">S/W
                                    <span class="drop"></span>
                                </a>
                                <ul class="localDep2">
                                    <li><a href="#LINK" onclick="javascript:fn_main_headPageMove('31','main/SurveyingEquipment')">측량장비</a></li>
		                            <li><a href="#LINK" onclick="javascript:fn_main_headPageMove('32','main/DroneImagingEquipment')">드론촬영장비</a></li>
		                            <li><a href="#LINK" onclick="javascript:fn_main_headPageMove('33','main/InputOutputUnit')">입출력장치</a></li>
		                            <li><a href="#LINK" onclick="javascript:fn_main_headPageMove('34','main/SoftWareUnit')">S/W</a></li>
                                </ul>
                            </li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
        <div class="container">
            <div class="subDesc sub03">
                <h3 class="subTit02">S/W<span>Software</span></h3>
                <div class="subContWrap">
                    <div class="cont">
                        <div class="figure">
                            <img src="images/puble_img/sub03_04_img1.png" alt="">
                        </div>
                        <p>AutoCAD</p>
                    </div>
                    <div class="cont">
                        <div class="figure">
                            <img src="images/puble_img/sub03_04_img2.png" alt="">
                        </div>
                        <p>Pix4Dmapper</p>
                    </div>
                    <div class="cont">
                        <div class="figure">
                            <img src="images/puble_img/sub03_04_img3.png" alt="">
                        </div>
                        <p>ContextCapture</p>
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