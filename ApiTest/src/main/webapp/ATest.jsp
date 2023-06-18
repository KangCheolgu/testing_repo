<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" isELIgnored="false"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<%
request.setCharacterEncoding("UTF-8");
%>

<c:set var="coX" value="${coXY.getCoX()}" />
<c:set var="coY" value="${coXY.getCoY()}" />
<c:set var="nowDate" value="${coXY.currentDate}" />
<c:set var="nowTime" value="${coXY.currentTime}" />

<c:set var="contextPath" value="${pageContext.request.contextPath}" />


<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript">
	function getAPI() {
		// API 받아오기	
		//받아올 단어를 담아줄 배열
		var words = new Array();
		//json object 를 담아줄 객체
		var obj = "";

		var xhr = new XMLHttpRequest();
		var url = 'http://apis.data.go.kr/1360000/VilageFcstInfoService_2.0/getUltraSrtNcst'; /*URL*/
		var queryParams = '?'
				+ encodeURIComponent('serviceKey')
				+ '='
				+ 'vDvgfXzS%2BoF6c1fJwn8CH205yaaoug7RDKTuX3milX7tMPCWG9%2BHpCOxRMTuCXfWRFkaigYqfU6PjTZe7DtNkA%3D%3D'; /*Service Key*/
		queryParams += '&' + encodeURIComponent('pageNo') + '='
				+ encodeURIComponent('1'); /*페이지 넘버*/
		queryParams += '&' + encodeURIComponent('numOfRows') + '='
				+ encodeURIComponent('1000'); /**/
		queryParams += '&' + encodeURIComponent('dataType') + '='
				+ encodeURIComponent('json'); /**/

		// 초 단기 실황일경우 1시간 내의 데이터만 조회 가능
		queryParams += '&' + encodeURIComponent('base_date') + '='
				+ encodeURIComponent('${nowDate}'); /**/
		queryParams += '&' + encodeURIComponent('base_time') + '='
				+ encodeURIComponent('${nowTime}'); /**/

		// 코드 정보는 엑셀에 저장됨
		queryParams += '&' + encodeURIComponent('nx') + '='
				+ encodeURIComponent('${coX}'); /**/
		queryParams += '&' + encodeURIComponent('ny') + '='
				+ encodeURIComponent('${coY}'); /**/

		xhr.open('GET', url + queryParams);

		xhr.onreadystatechange = function() {
			if (this.readyState == 4) {
				obj = JSON.parse(xhr.responseText);

				for (let i = 0; i < obj.response.body.items.item.length; i++) {
					console.log(obj.response.body.items.item[i]);
				}
			}
		};

		xhr.send('');
		// API 받기 끝
	}
</script>
<style>
</style>
</head>

<body>

	<div>
		엑스좌표 ${coX } <br /> 와이좌표 ${coY } <br /> 현재시간 ${nowTime } <br />
		오늘날짜 ${nowDate } <br />
	</div>

</body>
</html>