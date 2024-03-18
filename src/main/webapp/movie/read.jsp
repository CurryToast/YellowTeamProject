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
	<link rel="stylesheet" href="../assets/css/search.css" />
<!-- 	  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet"> -->
</head>
<body class="is-preload">
<div id="page-wrapper">
	<%@include file="../layout/header.jsp" %>
	<section id="read" >
	<!-- <hr style="color:white;"> -->
	<div id=imgbox>
	<img src="https://yellows3.s3.ap-northeast-2.amazonaws.com/share/poster/${bo.poster }.jpg" >
	<div id=box>
	<h1><c:out value="${bo.mname}"/>
	</h1>
	관람등급
	<h5><c:out value="${bo.rating}"/>세 이용가</h5>
	개봉일
	<h5><c:out value="${bo.release_date }"/></h5>
	장르 
	<h5><c:out value="${bo.genre}"/></h5>	
	<div id=box2>
	<br>
	상영 시간
	<h5><c:out value="${bo.running_time}"/>분</h5>
	감독
	<h5><c:out value="${bo.director}"/></h5>	
	제작사 및 배급사
	<h5><c:out value="${bo.producer}"/></h5>	
	</div>
	</div>
	<div id=box3>
	평점
	<h5><c:out value="${bo.mgrade}"/></h5>	
	제작 국가
	<h5><c:out value="${bo.country}"/></h5>	
	출연
	<h5><c:out value="${bo.mcast}"/></h5>	
	</div>
	<div id=synop_but>
	줄거리
	<h5 id=synopsys><c:out value="${bo.synopsys}"/></h5>	
	<div id=buttons>
		<a class="button" href="search?page=${page }">목록</a>   <!-- 현재페이지 번호 전달 - 순서3) -->
		<a class="reverse_button" href="reserve?page=${page }">예약</a>	
	</div>
	</div>
	</div>		
<!-- <textarea rows="20" disabled="disabled" 
style="background-color:#f3f3f3;font-size:inherit;resize: none;border:none;"> -->

<!-- </textarea> -->
		
	
	<!-- 메인글 출력 끝 -->
</section>	
<!-- <div data-num="5" id="datanum"></div> -->
</div>
<!-- <script src="../js/nav.js"></script> -->

			
</body>
</html>