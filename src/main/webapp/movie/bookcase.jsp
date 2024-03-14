<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>  
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
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
	
		<link rel="stylesheet" href="../css/layout.css" />
		<link rel="stylesheet" href="../assets/css/style.css" />  <!-- 회원가입 (temp.css 는 미사용)-->
		<link rel="stylesheet" href="../assets/css/main.css" />
		
		<script src="https://kit.fontawesome.com/352c53403e.js" crossorigin="anonymous"></script>
	</head>
	<body class="is-preload">
		<div id="page-wrapper">

			<!-- Header -->
				<%@ include file="../layout/header.jsp" %>
			<!-- Main -->
			<section id="booklist">
				<h3>책장</h3>
				<p>판매 중인 중고도서입니다.</p>
				<hr style="color:white;">
				<div id="mainarea">
					<c:forEach var="bo" items="${saleList }">
					<div class="gallery bookcase">
						<div style="height:80%;">
<%-- 		<img src="../images/bookcase/${bo.cover }" alt="${bo.title }"> --%>
						<img src="/upload/${bo.cover }" alt="${bo.title }">
							<!-- todo : 사용자가 파일 (이미지,텍스트 등)을 업로드 했을 때
								        서버 컴퓨터 특정 폴더에 저장되도록 하며
								        그 때에는 src 속성값도 url 변경합니다.
							 -->
						</div>
						<div  class="intro">	
							<div>
							<c:out value="${bo.title }"/> (<fmt:formatNumber value="${bo.release_date }" pattern="yyyy-MM-dd"/>)
							</div>
						</div>
					</div>
					</c:forEach>
				</div>
			</section>
		</div>	
	</body>
</html>