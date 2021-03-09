<%--
  Class Name : EgovIncHeader.jsp
  Description : 화면상단 Header(include)
  Modification Information
 
      수정일         수정자                   수정내용
    -------    --------    ---------------------------
     2011.08.31   JJY       경량환경 버전 생성
 
    author   : 실행환경개발팀 JJY
    since    : 2011.08.31 
--%>
<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<script type="text/javascript">

	var url = $(location).attr('href');  //브라우져에서 입력된 주소를 받아옴

	console.log(url)
	if(url.indexOf("/Notice.do") > 0) {  // 해당 도메인이 존재하는 체크, 없으면
		console.log("진행")
		response.sendRedirect("jsisnas.iptime.org:8085/Notice.do");  // 해당 도메인으로 이동 
	}


    function fn_main_headPageMove(menuNo, url){
    	
	    document.selectOne.menuNo.value=menuNo;
	    document.selectOne.link.value=url;
	    document.selectOne.action = "<c:url value='/EgovPageLink.do'/>";
	    //alert(document.selectOne.action);
	    document.selectOne.submit();
    }
    function fn_main_headPageAction(menuNo, url){
        document.selectOne.menuNo.value=menuNo;
        document.selectOne.link.value="";
        document.selectOne.action = "<c:url value='/' />"+url;
        document.selectOne.method = "post";
        //alert(document.selectOne.action);
        document.selectOne.submit();
    }
</script>
  	<form name="selectOne" action="#LINK">
		<input name="menuNo" type="hidden" /> 
		<input name="link" type="hidden" />
	</form>
    <!-- <h1 class="w3-xxlarge w3-text-white"><span class="w3-padding w3-black w3-opacity-min"><b>JSI</b></span> <span class="w3-hide-small w3-text-light-grey">System</span></h1> -->
  
<!-- //행정안전부 로고 및 타이틀 끝 -->
<div class="container menuWrap">
            <h1 class="logo"><a href="#LINK" onclick="javascript:fn_main_headPageMove('1','main/EgovMainView')">logo</a></h1>
            <nav>
                <ul>
                    <li>ABOUT US
                        <ul>
                            <li><a href="#LINK" onclick="javascript:fn_main_headPageMove('11','main/CEOWelcom')">CEO인사말</a></li>
                            <li><a href="#LINK" onclick="javascript:fn_main_headPageMove('12','main/JsisHistory')">연혁</a></li>
                            <li><a href="#LINK" onclick="javascript:fn_main_headPageMove('13','main/License')">면허 및 인증</a></li>
                            <li><a href="#LINK" onclick="javascript:fn_main_headPageMove('14','main/Organization')">조직도</a></li>
                            <li><a href="#LINK" onclick="javascript:fn_main_headPageMove('15','main/MapNavi')">찾아오시는 길</a></li>
                        </ul>
                    </li>
                    <li>WORK
                        <ul>
                            <li><a href="#LINK" onclick="javascript:fn_main_headPageMove('21','main/SpaceInformationProject')">공간정보사업</a></li>
                            <li><a href="#LINK" onclick="javascript:fn_main_headPageMove('22','main/SystemProject')">시스템사업</a></li>
                            <li><a href="#LINK" onclick="javascript:fn_main_headPageMove('23','main/AviationBusiness')">무인항공사업</a></li>
                            <li><a href="#LINK" onclick="javascript:fn_main_headPageMove('24','main/ResearchProject')">공간연구사업</a></li>
                        </ul>
                    </li>
                    <li>EQUIPMENT
                        <ul>
                            <li><a href="#LINK" onclick="javascript:fn_main_headPageMove('31','main/SurveyingEquipment')">측량장비</a></li>
                            <li><a href="#LINK" onclick="javascript:fn_main_headPageMove('32','main/DroneImagingEquipment')">드론촬영장비</a></li>
                            <li><a href="#LINK" onclick="javascript:fn_main_headPageMove('33','main/InputOutputUnit')">입출력장치</a></li>
                            <li><a href="#LINK" onclick="javascript:fn_main_headPageMove('34','main/SoftWareUnit')">S/W</a></li>
                        </ul>
                    </li>
                </ul>
            </nav>
        </div>