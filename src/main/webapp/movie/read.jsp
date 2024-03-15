<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<!DOCTYPE html>
<html>
<head>
	<title>커피24 북카페</title>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<!-- 	<meta http-equiv="Cache-Control" content="no-cache, no-store, must-revalidate">
	<meta http-equiv="Pragma" content="no-cache">
	<meta http-equiv="Expires" content="0"> -->
	<link rel="stylesheet" href="../assets/css/main.css" />
<!-- 	  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet"> -->
</head>
<body class="is-preload">
<div id="page-wrapper">
	<%@include file="../layout/header.jsp" %>
	<section id="read" >
	<hr style="color:white;">
	<img src="https://yellows3.s3.ap-northeast-2.amazonaws.com/share/poster/${bo.poster }.jpg" >
	<h5><c:out value="${bo.mname}"/></h5>
	<h6>관람등급 : <c:out value="${bo.rating}"/></h6>
	<h5>개봉일 : <c:out value="${bo.release_date }"/></h5>
	<p>장르 : <c:out value="${bo.genre}"/></p>	
	<p>상영 시간 : <c:out value="${bo.running_time}"/></p>
	<p>감독 : <c:out value="${bo.director}"/></p>	
	<p>제작사 및 배급사 : <c:out value="${bo.producer}"/></p>	
	<p>평점 : <c:out value="${bo.rating}"/></p>	
	<p>제작 국가 : <c:out value="${bo.country}"/></p>	
	<p>줄거리 : <c:out value="${bo.synopsys}"/></p>	
			
<!-- <textarea rows="20" disabled="disabled" 
style="background-color:#f3f3f3;font-size:inherit;resize: none;border:none;"> -->

<!-- </textarea> -->
		

		<a class="button" href="search?page=${page }">목록</a>   <!-- 현재페이지 번호 전달 - 순서3) -->
	<!-- 메인글 출력 끝 -->
</section>	
<!-- <div data-num="5" id="datanum"></div> -->
</div>
<!-- <script src="../js/nav.js"></script> -->

			
</body>
</html>