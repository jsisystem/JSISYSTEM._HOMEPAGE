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
                                <a href="#" class="openDep2">CEO 인사말
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
            <div class="subDesc sub01_01">
                <h3 class="subTit02">대표 인사말</h3>
                <div class="Desc01">
                    <p><span class="Textbold">끊임없는 열정</span>과 <span class="Textbold">도전</span>을 통해</p>
                    <p><span class="Textbold">신뢰받는 기업</span>으로 <span class="Textbold">성장</span>하겠습니다.</p>
                </div>
                <div class="subDescWrap">
                    <div class="Desc">
                        <span class="aqua Textbold">㈜제이시스</span>는 2016년도에 설립하여,<br>
											                        공간정보와 ICT전문기업으로 측량 및 공간정보 산업분야의 지하시설물<br>
											                        측량 뿐만 아니라 초경량 비행장치를 활용한 공간정보데이터 관련 사업과<br>
											                        시스템 구축 등 다양한 서비스를 제공하고 있습니다.
											                    </div>
											                    <div class="Desc">
											                        최고의 기술을 바탕으로 국내 최고의 선도기업을 지향하며,<br>
											                        창조적인 변화와 지속적인 혁신을 통해 성장의 중심이 되는<br>
											                        기업이 될 수 있도록 최선을 다해왔습니다.
											                    </div>
											                    <div class="Desc">
											                        앞으로도 새로운 성장동력을 확보하여 공간정보서비스의<br>
											                        선도기업으로서의 고객가치를 최우선으로 하여 더욱 발전할 수 있도록 노력할 것입니다.<br>
											                        더불어 확고한 윤리경영을 바탕으로 기업의 신뢰를 구축하고 끊임없이 도전, 혁신하려는<br>
											                        의지와 역량을 갖춘 기업으로 성장하는 모습을 보여드리겠습니다.<br>
											                        감사합니다.
                    </div>
                    <div class="Desc05 Textbold">제이시스 대표이사 서동철</div>
                </div>
            </div>
        </div>
    </section>
    <footer>
         <c:import url="/EgovPageLink.do?link=main/inc/MainFooter" />
    </footer>
</body>
</html>