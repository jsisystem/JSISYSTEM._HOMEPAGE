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
                                <a href="#" class="openDep2">공간연구사업
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
            <div class="subDesc sub02_03">
                <h3 class="subTit02">공간연구사업</h3>
                <div class="sub02header">
                    <h4>Space Research Project</h4>
                    <p>지속적인 연구개발을 통해 지적재산권 확보하고 있으며 정밀 GNSS 기반 관제시스템, 고정밀 공간정보를 활용한<br>Application 개발, 공간정보 분야 딥러닝 기술활용 방안등 다양한 공간정보분야 연구개발을 시행하고 있습니다.</p>
                </div>
                <div class="subContWrap">
                    <div>
                        <h5>연구개발 분야</h5>
                    </div>
                    <div class="imgBox">
                        <img src="images/puble_img/sub02_04_img01.png" alt="">
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