<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="contextPath" value="${pageContext.request.contextPath}" />
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link href="style.css" rel="stylesheet" type="text/css" />
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65"
	crossorigin="anonymous">
<script src="http://code.jquery.com/jquery-3.6.0.min.js"></script>

<title>오렌지 뉴스</title>
</head>
<body id="body">
	<jsp:include page="./common/header.jsp"></jsp:include>

	<menu class="menu">
		<div class="navibar">
			<ul class="navi">

				<li><div class="navi-text">
						<a href="#">시&nbsp&nbsp사</a>
					</div></li>
				<li><div>
						<a href="#">정&nbsp&nbsp치</a>
					</div></li>
				<li><div>
						<a href="#">연&nbsp&nbsp예</a>
					</div></li>
				<li><div style="border-right: solid 1px">
						<a href="#">스 포 츠</a>
					</div></li>

			</ul>
		</div>
	</menu>

	<section>
		<div class="home-section">
			<div class="head-line">
					
			</div>
			<div class="card-list">
				<div class="card">
					<img src="./img/logo2.png" class="card-img-top" alt="...">
					<div class="card-body">
						<h5 class="card-title">Card title</h5>
						<p class="card-text">Some quick example text to build on the
							card title and make up the bulk of the card's content.</p>
					</div>
				</div>
				<div class="card">
					<img src="./img/logo1.png" class="card-img-top" alt="...">
					<div class="card-body">
						<h5 class="card-title">Card title</h5>
						<p class="card-text">Some quick example text to build on the
							card title and make up the bulk of the card's content.</p>
					</div>
				</div>
				<div class="card">
					<img src="./img/todayweather.png" class="card-img-top" alt="...">
					<div class="card-body">
						<h5 class="card-title">Card title</h5>
						<p class="card-text">Some quick example text to build on the
							card title and make up the bulk of the card's content.</p>
					</div>
				</div>
				<div class="card">
					<img src="..." class="card-img-top" alt="...">
					<div class="card-body">
						<h5 class="card-title">Card title</h5>
						<p class="card-text">Some quick example text to build on the
							card title and make up the bulk of the card's content.</p>
					</div>
				</div>
				<div class="card">
					<img src="..." class="card-img-top" alt="...">
					<div class="card-body">
						<h5 class="card-title">Card title</h5>
						<p class="card-text">Some quick example text to build on the
							card title and make up the bulk of the card's content.</p>
					</div>
				</div>
				<div class="card">
					<img src="..." class="card-img-top" alt="...">
					<div class="card-body">
						<h5 class="card-title">Card title</h5>
						<p class="card-text">Some quick example text to build on the
							card title and make up the bulk of the card's content.</p>
					</div>
				</div>
			</div>

		</div>
	</section>

	<aside>
		<jsp:include page="./common/aside.jsp"></jsp:include>
	</aside>
	<footer class="footer">
		<jsp:include page="./common/footer.jsp"></jsp:include>
	</footer>
</body>
</html>