<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="contextPath" value="${pageContext.request.contextPath}" />
<!DOCTYPE html>
<%
Cookie[] cookies = request.getCookies();
String cookieName = "";
String cookieValue = "";

if (cookies != null) {
	for (int i = 0; i < cookies.length; i++) {
		if (cookies[i].getName().equals("cookieName")) {
			cookieName = cookies[i].getName();
			cookieValue = cookies[i].getValue();
		}
	}
}
%>

<%!private String getCookieValue(Cookie[] cookies, String name) {

		String value = null;

		if (cookies == null)
			return null;
		for (Cookie cookie : cookies) {
			if (cookie.getName().equals(name))
				return cookie.getValue();
		}
		return null;
	}%>

<%
String id = getCookieValue(cookies, "loginId");
%>
<c:set var="id" value="<%=id%>" />
		<c:choose>
			<c:when test="${empty id}">
				<div class="login" style="padding-top: 25px">
					<p></p>
					<div>
						<button type="button"
							onclick="location.href='${contextPath }/member/loginForm.do'"
							class="btn btn-outline-warning">로그인 하기</button>
						<br /> <a href="${contextPath }/member/join.do" style="font-size: 8px">아직 회원이 아니신가요?</a>
					</div>
				</div>
			</c:when>
			<c:otherwise>
				<div class="login" style="padding-top: 25px">
					<p></p>
					<div>
					<div>
						<h5>${id} 님 환영합니다!</h5>
					</div>
						<button type="button"
							onclick="location.href='${contextPath }/member/logout.do'"
							class="btn btn-outline-warning btn-sm">로그아웃</button>
							
						<button type="button"
							onclick="location.href='${contextPath }/member/mypage.do'"
							class="btn btn-outline-warning btn-sm">마이페이지</button>
					</div>
				</div>
			</c:otherwise>
		</c:choose>
<!-- 이미지 사이즈 236px 146px  -->
<div class="weather"><div><a href="${contextPath }/twc"><img src="${contextPath }/img/todayweather.png"></a></div></div>
<div class="hot-issue-rank">
	<div class="alert alert-danger" role="alert" style="text-align: center; ">
		<!-- 이모티콘 -->
 		<svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-fire" viewBox="0 0 16 16">
  		<path d="M8 16c3.314 0 6-2 6-5.5 0-1.5-.5-4-2.5-6 .25 1.5-1.25 2-1.25 2C11 4 9 .5 6 0c.357 2 .5 4-2 6-1.25 1-2 2.729-2 4.5C2 14 4.686 16 8 16Zm0-1c-1.657 0-3-1-3-2.75 0-.75.25-2 1.25-3C6.125 10 7 10.5 7 10.5c-.375-1.25.5-3.25 2-3.5-.179 1-.25 2 1 3 .625.5 1 1.364 1 2.25C11 14 9.657 15 8 15Z"/>
		</svg>
 		핫이슈 랭킹!
	</div>
	<div class="hotissueList">
		<ol>
			<a href="${contextPath }/articlePage/viewpage.jsp"><li>핫이슈 랭킹 </li></a>	
			<a href=""><li>핫이슈 랭킹 </li></a>	
			<a href=""><li>핫이슈 랭킹 </li></a>	
			<a href=""><li>핫이슈 랭킹 </li></a>	
			<a href=""><li>핫이슈 랭킹 </li></a>	
			<a href=""><li>핫이슈 랭킹 </li></a>	
			<a href=""><li>핫이슈 랭킹 </li></a>	
			<a href=""><li>핫이슈 랭킹 </li></a>	
			<a href=""><li>핫이슈 랭킹 </li></a>	
			<a href=""><li>핫이슈 랭킹 </li></a>	
		
		</ol>
	</div> 
</div>
<div>
	<a href="${contextPath }/news/addarticleForm.do">
		기사 작성
	</a>
</div>
