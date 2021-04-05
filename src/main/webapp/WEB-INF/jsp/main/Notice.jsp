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
    <link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
    

    <script src="http://ajax.googleapis.com/ajax/libs/jquery/1/jquery.min.js"></script>
    <script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
    <script type="text/javascript" src="<c:url value='/js/main.js' />"></script>
    <!-- <script language="javascript" src="jquery.json-2.3.min.js" type="text/javascript"></script> -->


    <!--[if lt IE 9]>
    <script src="js/IE9.js"></script>
    <script src="js/html5shiv.js"></script>
    <script src="js/respond.min.js"></script>
    <![endif]-->
    <script charset="UTF-8" class="daum_roughmap_loader_script" src="https://ssl.daumcdn.net/dmaps/map_js_init/roughmapLoader.js"></script>
</head>
<style>
body{box-sizing: border-box;} 

td{color:#FFFFFF;
   font-size:20px; 
   text-align:center;
   border:1px solid;
   }

th{color:#FFFFFF;
   font-size:20px;
   text-align:left;
   }
   
#name{
	width:80%;
	}



   
.td_all_left{text-align:left; height:42px;}


body{background:#25383C;}

.td_all_left{height:55px; text-align:left;}

@media all and  (max-width: 10000px) {
	#NoticeImg{width:95%}
}









</style>
<script>
$(function () {    
	var agent = navigator.userAgent.toLowerCase();
	
	if (agent.indexOf("chrome") != -1) {
	
	document.body.style.zoom = "72%";
	
	}
})

$('#nowDate').text(getToday());
var flag = 0;

$(document).ready(function() {
	$.ajax({
        url: "<c:url value='/noticeList.json'/>",       
        success: function(res) {
        	var data = res.data;
        	for(var i=0; i<data.length; i++){
        		var j = i+1;
        		$('#row'+j+'_name').html(data[i].name)
        		
        		if(data[i].stime==null || data[i].etime==null ){
        			$('#row'+j+'_td1').html('~');	
        		}
        		else{
        			$('#row'+j+'_td1').html(data[i].stime+'~'+data[i].etime);
        		}
        		if(data[i].plan == null){
        			$('#row'+j+'_td2').html('');
        		}
        		else{
        			$('#row'+j+'_td2').html(data[i].plan);
        		}
        		
        		
        	}
        	
        	
        	
        }
    });
});



function getToday(){
    var now = new Date();
    var year = now.getFullYear();
    var month = now.getMonth() + 1;    //1월이 0으로 되기때문에 +1을 함.
    var date = now.getDate();

    month = month >=10 ? month : "0" + month;
    date  = date  >= 10 ? date : "0" + date;
     // ""을 빼면 year + month (숫자+숫자) 됨.. ex) 2018 + 12 = 2030이 리턴됨.

    //console.log(""+year + month + date);
    return today = ""+year + month + date; 
}

function nowdate(){
	var today = new Date();
	var dayname = ["일요일","월요일","화요일","수요일","목요일","금요일","토요일"];
	var date = today.getDay();
	var hour = today.getHours();
	var min = today.getMinutes();
	var sec = today.getSeconds();
	
	min=dasi(min);
	sec=dasi(sec);
	document.getElementById('nowDate').innerHTML = hour+":"+min+":"+sec+"  "+dayname[date];
	
	$("#divc").css('text-align', 'right');
	 var t = setTimeout(function(){nowdate()},1000);
	
		var l = setTimeout(function(){
			refrash()
			},10000);
	
	
	
}
function refrash(){
	if(flag == 0){
		window.location.reload();
	}
}

function dasi(i){
	if(i<10){i="0"+i};
	return i;
}

function modify(rNum){
	$("#modifyBtn"+rNum).hide()
	$("#saveBtn"+rNum).show()
	flag = 1;
	
	var time_text = $("#row"+rNum+"_td1").html();
	var start_time = time_text.indexOf('<span>');	
	var end_time = time_text.indexOf('</span>');	
	var name =  $("#row"+rNum+"_name").text();
	start_time = time_text.substring(0,start_time);
	end_time = time_text.substring(end_time);
	end_time_num = end_time.indexOf('>');
	end_time = end_time.substring(end_time_num+1);
	
		
	
	$("#row"+rNum+"_name").html("<input id='name' value='"+name+"'></input>");
	$("#row"+rNum+"_td1").html("<input id='stime' value=''></input><span>~</span><input id='etime' value=''></input>");
	$("#row"+rNum+"_td2").html("<input id='plan' value=''></input>");
	

	$("#plan").keydown(function(key) {

		if (key.keyCode == 13) {

			saveClick(rNum)
		}

		});
}


function saveClick(rNum){
	$("#modifyBtn"+rNum).show();
	$("#saveBtn"+rNum).hide();
	seq = rNum;
	name = $("#name").val();
	stime = $('#stime').val();
	etime = $('#etime').val();
	plan = $('#plan').val();
	$("#row"+rNum+"_td1").html(stime + "<span>~</span>"+etime);
	$("#row"+rNum+"_td2").html(plan);
	
	$.ajax({
        url: "<c:url value='/noticeSave.json'/>",     
        data:{"seq":seq,"name":name,"stime":stime,"etime":etime,"plan":plan},
        success: function(res) {
        	
        	window.location.reload();
        	flag=0;
        	
        }
    });
}


</script>

<body onload="nowdate()">
	
	<table width="100%">
		<colgroup>
		    <col width="8%" style="background: #25383C" />
		    <col width="8%" style="background: #25383C" />
		    <col width="34%" style="background: #25383C" />
		    
		    <col width="8%" style="background: #25383C" />
		    <col width="8%" style="background: #25383C" />
		    <col width="34%" style="background: #25383C" />
		    
		    
	 	</colgroup>
		<tr style="height:10%">
			<th colspan="6"><h2 style={color:#FFFFFF;}>  개인별 외근일정 </h2>
				<div id="divc"><span id="nowDate"></span></div>
			</th>
		</tr>
		<tr>
			<td colspan="3"><h3 style={color:#FFFFFF;}>  제주 사무소 </h3>
			</td>
			<td colspan="3"><h3 style={color:#FFFFFF;}>  서울 사무소 </h3>
			</td>
		</tr>
		<tr>
			<td class="td_all">성명</td>
			<td class="td_all">시간</td>
			<td class="td_all">일정</td>	
			<td class="td_all">성명</td>
			<td class="td_all">시간</td>
			<td class="td_all">일정</td>
		</tr>
		<tr>
			<td class="td_all"><span id="row1_name"></span> <button id="modifyBtn1" style="text-align:right; font-size: 10px;"onclick='modify(1)'>수정</button><button id="saveBtn1" class= 'saveBtn' style="text-align:right; font-size: 10px;"onclick='saveClick(1)'>저장</button></td>
			<td id="row1_td1" class="td_all"><span>~</span></td>
			<td id="row1_td2" class="td_all_left"></td>
			
		
			<td class="td_all"><span id="row2_name"></span> <button id="modifyBtn2" style="text-align:right; font-size: 10px;"onclick='modify(2)'>수정</button><button id="saveBtn2" class= 'saveBtn' style="text-align:right; font-size: 10px;"onclick='saveClick(2)'>저장</button></td>
			<td id="row2_td1" class="td_all"><span>~</span></td>
			<td id="row2_td2" class="td_all_left"></td>
		
		</tr>
		
		<tr>
			<td class="td_all"><span id="row3_name"></span><button id="modifyBtn3" style="text-align:right; font-size: 10px;"onclick='modify(3)'>수정</button><button id="saveBtn3" class= 'saveBtn' style="text-align:right; font-size: 10px;"onclick='saveClick(3)'>저장</button></td>
			<td id="row3_td1" class="td_all"><span>~</span></td>
			<td id="row3_td2" class="td_all_left"></td>
			
		
			<td class="td_all"><span id="row4_name"></span> <button id="modifyBtn4" style="text-align:right; font-size: 10px;"onclick='modify(4)'>수정</button><button id="saveBtn4" class= 'saveBtn' style="text-align:right; font-size: 10px;"onclick='saveClick(4)'>저장</button></td>
			<td id="row4_td1" class="td_all"><span>~</span></td>
			<td id="row4_td2" class="td_all_left"></td>
		
		</tr>
		
		<tr>
			<td class="td_all"><span id="row5_name"></span> <button id="modifyBtn5" style="text-align:right; font-size: 10px;"onclick='modify(5)'>수정</button><button id="saveBtn5" class= 'saveBtn' style="text-align:right; font-size: 10px;"onclick='saveClick(5)'>저장</button></td>
			<td id="row5_td1" class="td_all"><span>~</span></td>
			<td id="row5_td2" class="td_all_left"></td>
			
		
			<td class="td_all"><span id="row6_name"></span> <button id="modifyBtn6" style="text-align:right; font-size: 10px;"onclick='modify(6)'>수정</button><button id="saveBtn6" class= 'saveBtn' style="text-align:right; font-size: 10px;"onclick='saveClick(6)'>저장</button></td>
			<td id="row6_td1" class="td_all"><span>~</span></td>
			<td id="row6_td2" class="td_all_left"></td>
		
		</tr>
		
		
		<tr>
			<td class="td_all"><span id="row7_name"></span> <button id="modifyBtn7" style="text-align:right; font-size: 10px;"onclick='modify(7)'>수정</button><button id="saveBtn7" class= 'saveBtn' style="text-align:right; font-size: 10px;"onclick='saveClick(7)'>저장</button></td>
			<td id="row7_td1" class="td_all"><span>~</span></td>
			<td id="row7_td2" class="td_all_left"></td>
			
		
			<td class="td_all"><span id="row8_name"></span> <button id="modifyBtn8" style="text-align:right; font-size: 10px;"onclick='modify(8)'>수정</button><button id="saveBtn8" class= 'saveBtn' style="text-align:right; font-size: 10px;"onclick='saveClick(8)'>저장</button></td>
			<td id="row8_td1" class="td_all"><span>~</span></td>
			<td id="row8_td2" class="td_all_left"></td>
		
		</tr>
		
		<tr>
			<td class="td_all"><span id="row9_name"></span> <button id="modifyBtn9" style="text-align:right; font-size: 10px;"onclick='modify(9)'>수정</button><button id="saveBtn9" class= 'saveBtn' style="text-align:right; font-size: 10px;"onclick='saveClick(9)'>저장</button></td>
			<td id="row9_td1" class="td_all"><span>~</span></td>
			<td id="row9_td2" class="td_all_left"></td>
			
		
			<td class="td_all"><span id="row10_name"></span> <button id="modifyBtn10" style="text-align:right; font-size: 10px;"onclick='modify(10)'>수정</button><button id="saveBtn10" class= 'saveBtn' style="text-align:right; font-size: 10px;"onclick='saveClick(10)'>저장</button></td>
			<td id="row10_td1" class="td_all"><span>~</span></td>
			<td id="row10_td2" class="td_all_left"></td>
		
		</tr>
		
		<tr>
			<td class="td_all"><span id="row11_name"></span> <button id="modifyBtn11" style="text-align:right; font-size: 10px;"onclick='modify(11)'>수정</button><button id="saveBtn11" class= 'saveBtn' style="text-align:right; font-size: 10px;"onclick='saveClick(11)'>저장</button></td>
			<td id="row11_td1" class="td_all"><span>~</span></td>
			<td id="row11_td2" class="td_all_left"></td>
			
		
			<td class="td_all"> <span id="row12_name"></span><button id="modifyBtn12" style="text-align:right; font-size: 10px;"onclick='modify(12)'>수정</button><button id="saveBtn12" class= 'saveBtn' style="text-align:right; font-size: 10px;"onclick='saveClick(12)'>저장</button></td>
			<td id="row12_td1" class="td_all"><span>~</span></td>
			<td id="row12_td2" class="td_all_left"></td>
		
		</tr>
		
		<tr>
			<td class="td_all"><span id="row13_name"></span> <button id="modifyBtn13" style="text-align:right; font-size: 10px;"onclick='modify(13)'>수정</button><button id="saveBtn13" class= 'saveBtn' style="text-align:right; font-size: 10px;"onclick='saveClick(13)'>저장</button></td>
			<td id="row13_td1" class="td_all"><span>~</span></td>
			<td id="row13_td2" class="td_all_left"></td>
			
		
			<td class="td_all"> <span id="row14_name"></span><button id="modifyBtn14" style="text-align:right; font-size: 10px;"onclick='modify(14)'>수정</button><button id="saveBtn14" class= 'saveBtn' style="text-align:right; font-size: 10px;"onclick='saveClick(14)'>저장</button></td>
			<td id="row14_td1" class="td_all"><span>~</span></td>
			<td id="row14_td2" class="td_all_left"></td>
		
		</tr>
		
		<tr>
			<td class="td_all"><span id="row15_name"></span> <button id="modifyBtn15" style="text-align:right; font-size: 10px;"onclick='modify(15)'>수정</button><button id="saveBtn15" class= 'saveBtn' style="text-align:right; font-size: 10px;"onclick='saveClick(15)'>저장</button></td>
			<td id="row15_td1" class="td_all"><span>~</span></td>
			<td id="row15_td2" class="td_all_left"></td>
			
		
			<td class="td_all"> <span id="row16_name"></span><button id="modifyBtn16" style="text-align:right; font-size: 10px;"onclick='modify(16)'>수정</button><button id="saveBtn16" class= 'saveBtn' style="text-align:right; font-size: 10px;"onclick='saveClick(16)'>저장</button></td>
			<td id="row16_td1" class="td_all"><span>~</span></td>
			<td id="row16_td2" class="td_all_left"></td>
		
		</tr>
		
		<tr>
			<td class="td_all"><span id="row17_name"></span> <button id="modifyBtn17" style="text-align:right; font-size: 10px;"onclick='modify(17)'>수정</button><button id="saveBtn17" class= 'saveBtn' style="text-align:right; font-size: 10px;"onclick='saveClick(17)'>저장</button></td>
			<td id="row17_td1" class="td_all"><span>~</span></td>
			<td id="row17_td2" class="td_all_left"></td>
			
		
			<td class="td_all"><span id="row18_name"></span> <button id="modifyBtn18" style="text-align:right; font-size: 10px;"onclick='modify(18)'>수정</button><button id="saveBtn18" class= 'saveBtn' style="text-align:right; font-size: 10px;"onclick='saveClick(18)'>저장</button></td>
			<td id="row18_td1" class="td_all"><span>~</span></td>
			<td id="row18_td2" class="td_all_left"></td>
		
		</tr>
		
		<tr>
			<td class="td_all"><span id="row19_name"></span><button id="modifyBtn19" style="text-align:right; font-size: 10px;"onclick='modify(19)'>수정</button><button id="saveBtn19" class= 'saveBtn' style="text-align:right; font-size: 10px;"onclick='saveClick(19)'>저장</button></td>
			<td id="row19_td1" class="td_all"><span>~</span></td>
			<td id="row19_td2" class="td_all_left"></td>
			
		
			<td class="td_all"><span id="row20_name"></span> <button id="modifyBtn20" style="text-align:right; font-size: 10px;"onclick='modify(20)'>수정</button><button id="saveBtn20" class= 'saveBtn' style="text-align:right; font-size: 10px;"onclick='saveClick(20)'>저장</button></td>
			<td id="row20_td1" class="td_all"><span>~</span></td>
			<td id="row20_td2" class="td_all_left"></td>
		
		</tr>
		
		<tr>
			<td class="td_all"><span id="row21_name"></span> <button id="modifyBtn21" style="text-align:right; font-size: 10px;"onclick='modify(21)'>수정</button><button id="saveBtn21" class= 'saveBtn' style="text-align:right; font-size: 10px;"onclick='saveClick(21)'>저장</button></td>
			<td id="row21_td1" class="td_all"><span>~</span></td>
			<td id="row21_td2" class="td_all_left"></td>
			
		
			<td class="td_all"><span id="row22_name"></span> <button id="modifyBtn22" style="text-align:right; font-size: 10px;"onclick='modify(22)'>수정</button><button id="saveBtn22" class= 'saveBtn' style="text-align:right; font-size: 10px;"onclick='saveClick(22)'>저장</button></td>
			<td id="row22_td1" class="td_all"><span>~</span></td>
			<td id="row22_td2" class="td_all_left"></td>
		
		</tr>
		
		<tr>
			<td class="td_all"><span id="row23_name"></span> <button id="modifyBtn23" style="text-align:right; font-size: 10px;"onclick='modify(23)'>수정</button><button id="saveBtn23" class= 'saveBtn' style="text-align:right; font-size: 10px;"onclick='saveClick(23)'>저장</button></td>
			<td id="row23_td1" class="td_all"><span>~</span></td>
			<td id="row23_td2" class="td_all_left"></td>
			
		
			<td class="td_all"><span id="row24_name"></span> <button id="modifyBtn24" style="text-align:right; font-size: 10px;"onclick='modify(24)'>수정</button><button id="saveBtn24" class= 'saveBtn' style="text-align:right; font-size: 10px;"onclick='saveClick(24)'>저장</button></td>
			<td id="row24_td1" class="td_all"><span>~</span></td>
			<td id="row24_td2" class="td_all_left"></td>
		
		</tr>
		
		<tr>
			<td class="td_all"><span id="row25_name"></span> <button id="modifyBtn25" style="text-align:right; font-size: 10px;"onclick='modify(25)'>수정</button><button id="saveBtn25" class= 'saveBtn' style="text-align:right; font-size: 10px;"onclick='saveClick(25)'>저장</button></td>
			<td id="row25_td1" class="td_all"><span>~</span></td>
			<td id="row25_td2" class="td_all_left"></td>
			
		
			<td class="td_all"><span id="row26_name"></span><button id="modifyBtn26" style="text-align:right; font-size: 10px;"onclick='modify(25)'>수정</button><button id="saveBtn26" class= 'saveBtn' style="text-align:right; font-size: 10px;"onclick='saveClick(26)'>저장</button></td>
			<td id="row26_td1" class="td_all"><span>~</span></td>
			<td id="row26_td2" class="td_all_left"></td>
		
		</tr>
		
		<!-- <tr>
			<td class="td_all"><span id="row27_name"></span> <button id="modifyBtn27" style="text-align:right; font-size: 10px;"onclick='modify(27)'>수정</button><button id="saveBtn27" class= 'saveBtn' style="text-align:right; font-size: 10px;"onclick='saveClick(27)'>저장</button></td>
			<td id="row27_td1" class="td_all"><span>~</span></td>
			<td id="row27_td2" class="td_all_left"></td>
			
		
			<td class="td_all"><span id="row28_name"></span> <button id="modifyBtn28" style="text-align:right; font-size: 10px;"onclick='modify(28)'>수정</button><button id="saveBtn28" class= 'saveBtn' style="text-align:right; font-size: 10px;"onclick='saveClick(28)'>저장</button></td>
			<td id="row28_td1" class="td_all"><span>~</span></td>
			<td id="row28_td2" class="td_all_left"></td>
		
		</tr>
		<tr>
			<td class="td_all"><span id="row29_name"></span> <button id="modifyBtn29" style="text-align:right; font-size: 10px;"onclick='modify(29)'>수정</button><button id="saveBtn29" class= 'saveBtn' style="text-align:right; font-size: 10px;"onclick='saveClick(29)'>저장</button></td>
			<td id="row29_td1" class="td_all"><span>~</span></td>
			<td id="row29_td2" class="td_all_left"></td>
			
		
			<td class="td_all"><span id="row30_name"></span> <button id="modifyBtn30" style="text-align:right; font-size: 10px;"onclick='modify(30)'>수정</button><button id="saveBtn30" class= 'saveBtn' style="text-align:right; font-size: 10px;"onclick='saveClick(30)'>저장</button></td>
			<td id="row30_td1" class="td_all"><span>~</span></td>
			<td id="row30_td2" class="td_all_left"></td>
		
		</tr> -->
		<tr>
		<!-- 공지사항 2500 / 390 size img -->

			<td colspan="6"><img src="images/Notice.png" alt="" style="width:100%;"></td>

			<!-- <td colspan="6"><p id="NoticeImg"><img  src="images/Notice.png" alt=""></p></td> -->

		</tr>
		
				
	</table>
</body>
<script>
$('.saveBtn').hide();
</script>
</html>