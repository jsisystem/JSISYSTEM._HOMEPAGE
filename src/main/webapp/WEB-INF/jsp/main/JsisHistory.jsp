<%--
  Class Name : EgovHistory.jsp
  Description : 샘플화면 - 사이트 연혁(sample)
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
    <script src="http://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
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
                                <a href="#" class="openDep2">연혁
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
            <div class="subDesc sub01_02">
                <h3 class="subTit02">History</h3>
                <p class="Desc01">끊임없는 혁신을 통해 신뢰받는 기업</p>
                <div class="tac"><img src="images/puble_img/sub01_02_contents.png" alt=""></div>
            </div>
        </div>
    </section>
    <footer>
        <c:import url="/EgovPageLink.do?link=main/inc/MainFooter" />
    </footer>
</body>
</html>