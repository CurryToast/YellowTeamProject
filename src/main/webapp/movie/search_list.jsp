<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE HTML>
<!--
	Arcana by Pixelarity
	pixelarity.com | hello@pixelarity.com
	License: pixelarity.com/license
-->
<html>
<head>
	<title>커피24 북카페</title>
	<meta charset="utf-8" />
	<meta name="viewport"
		content="width=device-width, initial-scale=1, user-scalable=no" />
<meta http-equiv="Cache-Control" content="no-cache, no-store, must-revalidate">
<meta http-equiv="Pragma" content="no-cache">
<meta http-equiv="Expires" content="0">
<title></title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet">
<link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/header.css" />
<link rel="stylesheet" href="../css/layout.css" />
<link rel="stylesheet" href="../assets/css/style.css" />  <!-- 회원가입 (temp.css 는 미사용)-->
<link rel="stylesheet" href="../assets/css/main.css" />
	<link rel="stylesheet" href="../assets/css/search.css">
	<link rel="stylesheet"
		href="${pageContext.request.contextPath }/css/list.css?v=3">
		
<!-- 		<script src="https://kit.fontawesome.com/352c53403e.js" crossorigin="anonymous"></script>	 -->

</head>
<body class="is-preload">
	<div id="page-wrapper">
		<!-- Header -->
		<%@ include file="../layout/header.jsp"%>
		<!-- Main -->
		<section class="wrapper style1" id="moivesearch">
			<div class="container">
				<div id="content">
					<!-- Content -->
					<article>
						<header class="guide">
							<h3>스타 레이드 영화관</h3>
							<p>현재 상영중인 영화</p>
						</header>
					</article>
					<hr style="color: white;">
					<div id="search">
						<form>
							<select name="column" id="column">
								<!-- 아래 value 속성값은 테이블 컬럼명과 동일하게 해야합니다. -->
								<option value="">선택</option>
								<option value="mname">제목</option>
								<option value="genre">장르</option>
								<option value="director">감독</option>
								<option value="release_date">개봉일</option>
								<option value="producer">제작사 및 배급사</option>
								<option value="running_time">상영시간</option>
								<option value="rating">관람등급</option>
								<option value="mgrade">평점</option>
								<option value="country">제작 국가</option>
								<option value="mcast">배우</option>
							</select> <input type="text" name="findText" placeholder="검색할 단어를 입력하세요.">
							<button type="button" id="search-btn">검색</button>
							<button type="button" onclick="location.href='search'">전체보기</button>
						</form>
					</div>
					<section id="searchlist"></section> 					
					<hr>
					</div>
				</div>
				</section>
			</div>
	<!-- Scripts -->
	<script src="${pageContext.request.contextPath}/assets/js/jquery.min.js"></script>
	<script src="${pageContext.request.contextPath}/assets/js/jquery.dropotron.min.js"></script>
	<script src="${pageContext.request.contextPath}/assets/js/browser.min.js"></script>
	<script src="${pageContext.request.contextPath}/assets/js/breakpoints.min.js"></script>
	<script src="${pageContext.request.contextPath}/assets/js/main.js"></script>
	<script src="${pageContext.request.contextPath}/js/nav.js"></script>

	<script type="text/javascript" src="${pageContext.request.contextPath}/assets/js/moviesearch.js"></script>

</body>
</html>