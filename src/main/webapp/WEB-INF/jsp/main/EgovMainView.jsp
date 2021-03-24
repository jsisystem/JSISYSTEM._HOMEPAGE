<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Frameset//EN">   

<%--
  Class Name : EgovMainView.jsp 
  Description : 메인화면
  Modification Information
 
      수정일         수정자                   수정내용
    -------    --------    ---------------------------
     2011.08.31   JJY       경량환경 버전 생성
 
    author   : 실행환경개발팀 JJY
    since    : 2011.08.31 
--%>
<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="ui" uri="http://egovframework.gov/ctl/ui"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<!-- <!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd"> -->
<html>
<head>
<meta http-equiv="Content-Language" content="ko" >
<meta name="viewport" content="width=device-width, initial-scale=1">

<title>제이시스에 오신것을 환영합니다.</title>

<!--<link href="<c:url value='/'/>css/w3.css" rel="stylesheet" type="text/css" >-->
<!--<link href="<c:url value='/'/>css/common.css" rel="stylesheet" type="text/css" >-->

<!--<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>-->

<!-- <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script> -->



<link href="<c:url value='/'/>../../css/main.css" rel="stylesheet" type="text/css" >
<%-- <link href="<c:url value='/'/>css/style.css" rel="stylesheet" type="text/css" > --%>
<script src="http://ajax.googleapis.com/ajax/libs/jquery/1/jquery.min.js"></script>
<script src="http://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
<script type="text/javascript" src="<c:url value='/js/main.js' />"></script>
<script src="http://ssl.daumcdn.net/dmaps/map_js_init/roughmapLoader.js"></script>

</head>

<script>
/* Demo purposes only */
$(".hover").mouseleave(
  function () {
    $(this).removeClass("hover");
  }
);
</script>


<body>

    <header>
        <c:import url="/EgovPageLink.do?link=main/inc/MainHeader" />
    </header>
    
    
    <section class="main01">
        <div class="textBox">
            <p class="mainDesc01">끝없는 도전과 창조적 변화의 중심 </p>
            <p class="mainDesc02">Jeju Spatial Information System</p>
        </div>
    </section>
    <section class="main02">
        <div class="tabMenu container">
            <span class="work"><img src="<c:url value='/images/puble_img/work.png' />" alt="work"/></span>
            <%--  <span class="work"><img src='<c:url value="/images/publ_img/work.png" />' </span> --%>
            
             
            
            <span onclick="javascript:fn_main_headPageMove('21','main/SpaceInformationProject')">공간정보사업</span>
            <span onclick="javascript:fn_main_headPageMove('22','main/SystemProject')">시스템사업</span>
            <span onclick="javascript:fn_main_headPageMove('23','main/AviationBusiness')">무인항공사업</span>
            <span onclick="javascript:fn_main_headPageMove('24','main/ResearchProject')">공간연구사업</span>
        </div>
        <div class="textBox02">
            <p class="mainDesc03"><span>ㅣ주ㅣ제이시스</span>는 공간정보와 ICT전문기업으로 도내에서 시행하는 측량 및 공간정보 산업분야의 지하시설물 측량 뿐만 아니라<br>초경량 비행장치를 활용한 공간정보데이터 관련사업과 제주공가정보데이터 시스템 구축 등 다양한 서비스를 제공하고 있습니다. </p>
        </div>
        <div class="mainContentBox">
            <div>
                <div>
                    <div>
                        <div class="contentImg1" onclick="javascript:fn_main_headPageMove('21','main/SpaceInformationProject')"></div>
                        <h3>공간정보사업</h3>
                        <p>Spatial Data Business</p>
                    </div>
                    <div>
                        <div class="contentImg2" onclick="javascript:fn_main_headPageMove('22','main/SystemProject')"></div>
                        <h3>시스템사업</h3>
                        <p>System Business</p>
                    </div>
                </div>
                <div>
                    <div>
                        <div class="contentImg3" onclick="javascript:fn_main_headPageMove('23','main/AviationBusiness')"></div>
                        <h3>무인항공사업</h3>
                        <p>Unmanned Aviation Business </p>
                    </div>
                    <div>
                        <div class="contentImg4" onclick="javascript:fn_main_headPageMove('24','main/ResearchProject')"></div>
                        <h3>공간연구사업</h3>
                        <p>Spatial Research Business</p>
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

