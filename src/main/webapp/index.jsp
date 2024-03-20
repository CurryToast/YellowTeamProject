<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<!DOCTYPE HTML>
<!--
	Arcana by Pixelarity
	pixelarity.com | hello@pixelarity.com
	License: pixelarity.com/license
-->
<html>
<head>
	<title>영화관</title>
	<meta charset="utf-8" />
	<meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=no" />
	<meta http-equiv="Cache-Control" content="no-cache, no-store, must-revalidate">
	<meta http-equiv="Pragma" content="no-cache">
	<meta http-equiv="Expires" content="0">
    <meta name="description" content="" />
    <meta name="author" content="" />
   	<link rel="stylesheet" href="https://fonts.googleapis.com/css2?family=Material+Symbols+Outlined:opsz,wght,FILL,GRAD@24,400,0,0" />
	<link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/main.css?v=3" />
	<link rel="stylesheet" href="${pageContext.request.contextPath}/css/layout.css?v=3" />
	<link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/header.css" />
	<link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/banner.css">
	<link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/movieCard.css">
	<link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/label.css">
	<script src="https://kit.fontawesome.com/352c53403e.js" crossorigin="anonymous"></script>
</head>
<body class="is-preload">+
<div id="page-wrapper" class="home">
	<script>
		var back = sessionStorage.getItem('back');
		if(back) {
			location.href=back;
			sessionStorage.removeItem('back');
		}
	</script>
	<!-- Header -->
	<%@ include file="./layout/header.jsp" %>
	<!-- Banner -->
	<section id="banner">
	</section>
	<!-- Highlights -->
	<section class="wrapper style1">
		<div class="container">
			<div class="row gtr-200">
				<section class="col-4 col-12-narrower">
					<!-- <div class="box highlight">
						<i class="icon solid major fa- book"></i>
						<h3>책장</h3>
						<p>커피24에서 함께 보는<br> 책들 구경오세요.<br>
						회원님들의 소장 도서를 판매합니다.
						</p>
					</div> -->
				</section>
				<section class="col-4 col-12-narrower">
					<!-- <div class="box highlight">
						<i class="icon solid major fa-award"></i>
						<h3>책벌레</h3>
						<p>매달 좋은 책들을 소개하고<br> 책 이야기 많이 해주시는 책벌레들을 <br>소개합니다.</p>
					</div> -->
				</section>
				<section class="col-4 col-12-narrower">
					<!-- <div class="box highlight">
						<i class="icon solid major fa-frog"></i>
						<h3>북챗</h3>
						<p>오늘 책을 읽으셨나요? <br>당신의 추억과 일상을 <br>책과 함께 이야기해 주세요.</p>
					</div> -->
				</section>
			</div>
		</div>
	</section>
	<!-- Gigantic Heading -->
	<section class="wrapper style2">
		<div class="container">
			<!-- <header class="major">
				<h2>BEST Pick</h2>
			</header> -->
		</div>
	</section>
	<!-- Posts -->
	 <section class="wrapper style1">
		<div class="container">
			<div class="row">
				<section class="col-6 col-12-narrower">
					<div class="box post">
						<a href="http://localhost:8080/YellowTeamProject/movie/read?mcode=100066&page=1" class="image left" target="blank_">
						<img src="/upload/deadfool.jpg" alt="" ></a>
						<div class="inner">
							<h3>데드풀</h3>
							★★★☆
							<p>"구강 액션의 진경" <br>-이동진</p>
							<p>"제가 만난 히어로 중 제일 매력적이었어요." <br>- 웨이드 윌슨</p>
						</div>
					</div>
				</section> 
				<section class="col-6 col-12-narrower">
					<div class="box post">
						<a href="http://localhost:8080/YellowTeamProject/movie/read?mcode=100010&page=1" class="image left" target="blank_">
						<img src="/upload/yourname.jpg" alt=""/></a>
						<div class="inner">
							<h3>너의 이름은.</h3>
							★★★☆
							<p>"갈라지는 것들의 파괴력과 이어지는 것들의 치유력. <br>이 영화가 주는 감동의 태반은 끝내 연결하려는 안간힘에서 온다." <br>- 이동진</p>
							<p>"그런 세계를 둘이서 평생, 아니 언제까지나 계속 함께 하는 거야" 
							<br>- OST, スパークル 中</p>
						</div>
					</div>
				</section>
			</div>
			<div class="row">
				<section class="col-6 col-12-narrower">
					<div class="box post">
					<a href="http://localhost:8080/YellowTeamProject/movie/read?mcode=100106&page=1" class="image left" target="blank_">
						<img src="/upload/bohemian.jpg" alt=""/></a>
						<div class="inner">
							<h3>보헤미안 랩소디</h3>
							★★★☆
							<p>"싱어이기에 가능했을, 머큐리와 그의 시간에 바치는 아름다운 헌사" <br>- 이용철</p>
							<p>"쇼는 계속되어야 한다." <br> - Queen, The Show Must go on
						</div>
					</div>
				</section>
				<section class="col-6 col-12-narrower">
					<div class="box post">
					<a href="http://localhost:8080/YellowTeamProject/movie/read?mcode=100109&page=1" class="image left" target="blank_">
						<img src="/upload/france.jpg" alt=""/></a>
						<div class="inner">
							<h3>레미제라블</h3>
							★★★★☆
							<p>뮤지컬이 보여주지 못한 스펙터클까지!<br> - 황진미<p>
							<p>"너는 듣고 있는가? 분노한 민중의 노래"<br> - OST, Do You Hear the People Sing</p>
						</div>
					</div>
				</section>
			</div>
		</div>
	</section> -->
	<!-- CTA -->
	<section id="cta" class="wrapper style3">
		<!-- <div class="container">
			<header>
				<h3 style="margin:0 auto;">책과 함께 힐링하세요!</h3>
			</header>
		</div> -->
	</section>
	<div data-num="0" id="datanum"></div>
	<script type="text/javascript" src="${pageContext.request.contextPath}/assets/js/home.js"></script>
</div>
</body>
</html>