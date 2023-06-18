<%--page import="weather.WeatherDAO"--%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="contextPath"  value="${pageContext.request.contextPath}"  />


<!DOCTYPE html>
<html>
<head>
<script src="//code.jquery.com/jquery-3.6.0.min.js"></script>
<meta charset="UTF-8">
<title>Insert titlere</title>

<script>


/* 클릭한 g 의 아이디를 얻는다.  */
$(document).ready(function() {
	$("g").click(function() {
		
		let mapId = "";
		let mapName = "";
		
		/* 색깔 초기화 */
		$("g > *").attr('fill', '#118ac9');
		
		mapId = $(this).attr('id');
		mapName = $(this).attr('name');
		
		let getFill1 = document.querySelector("#"+mapId);
        let getFill2 = getFill1.querySelectorAll("path");
        
        for(let i = 0; i < getFill2.length; i++){
            getFill2[i].setAttribute('fill','#FF761A');
        }
        
        // 클릭한 지역의 제목 출력
		document.getElementById("wArea").innerHTML = mapName + "<br/> 날씨정보";
		
		//controller로 보낼 내용 저장
		var form = document.createElement("form");
		form.setAttribute("method", "post");
		form.setAttribute("action", '${contextPath}/twc/getco.do');
		
	    var parentNOInput = document.createElement("input");
	    parentNOInput.setAttribute("type","hidden");
	    parentNOInput.setAttribute("name","mapName");
	    parentNOInput.setAttribute("value", mapName);
	    
	    form.appendChild(parentNOInput);
	    document.body.appendChild(form);
	    console.log(form);
	    console.log(parentNOInput);
	    form.submit(); 
		
	});
	
});

</script>

<style>

</style>

</head>

<body>
	<table border=1>
	<tr >
		<td rowspan="2"><jsp:include page="Map.jsp"></jsp:include></td>
		<td id="wArea"> 날씨 정보 </td>
	</tr>
	<tr >
		
		<td> 상세 정보 </td>
	</tr>
	
	<tr>
		<td colspan="2"> 지역별 검색 </td>
	</tr>
	</table>
	
</body>

</html>