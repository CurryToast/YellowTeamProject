<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
	<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
	<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
	<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>상영 일정</title>
			 <link rel = "stylesheet" href="../assets/css/movielist.css"/>
</head>
<body>
	<%@ include file="../layout/header.jsp" %>


<section id = "movieList">
			<h3>상영 일정</h3>
			<hr style="color:white;">
	<!-- 전체 목록 -->
<ul>
	<li id = "choose">
			<button onclick = "allmovie()" id = "allmovie" type = "button">
				<span>전체</span>
			</button>
	</li>
</ul>
<ul>
				<c:forEach var="movie" items="${selectAllmovies}">
		<li>
			<div class="movie-container">
					<%-- <img src = "../upload/${movie.poster}.jpg" alt="${movie.mname}">  --%>
					<img src = "https://yellows3.s3.ap-northeast-2.amazonaws.com/share/poster/${movie.poster}.jpg" alt="${movie.mname}"> 
				<span>${movie.mname}</span>
			</div>
		</li>
				</c:forEach>
	</ul>
<%-- 	<!-- 현재 상영작 -->
<ul>
	<li id = "choose">
		<button id = "current" type="button">
				<span>현재 상영작</span>
		</button>
	</li>
</ul>
	<ul>
		<li>
			<div>
				<span> 
					<img src = "../images/${bo.poster}" alt="${bo.title}">
				</span>
			</div>
		</li>
	</ul>
	<!-- 상영 예정작 -->
<ul>
	<li id = "choose">
		<button id = "upcoming" type="button">
			<span>상영 예정작</span>
		</button>
	</li>
</ul>
	<!-- 상영 종료 -->
<ul>
	<li id = "choose">
		<button id = "end" type="button">
			<span>상영 종료</span>
		</button>
	</li>
</ul>
 --%>
	<!-- <div id = "allContent" class="content">전체</div>
	<div id = "currentContent" class="content">현재 상영작 정보</div>
	<div id = "upcomingContent" class="content">예정 상영작 정보</div>
	<div id = "endContent" class="content">상영 종료작 정보</div> -->
	<%-- 
			<c:if test = "${user != null}">
				<div style = "text-align:center;"></div>
			</c:if>
		<div id = "mainarea">
		<img src = "../images/${bo.poster }" alt="${bo.title }">
		
			
		</div> --%>
		</section>
		
		<script src="../assets/js/list.js"></script>
		<script src="https://cdn.jsdelivr.net/npm/axios/dist/axios.min.js"></script>
		

</body>
</html>