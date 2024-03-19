<%@page import="mybatis.dao.MovieDao"%>
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
			
<!-- 전체 -->
<ul>
	<li id = "choose">
			<a href="#"  onclick = "allmovie()" id = "allmovie" type = "button">
				<span class ="choice">전체</span>
			</a>
	</li>
</ul>

<ul>
	<li id = "choose">
		<a href="#" id = "current" type="button">
				<span class = "choice">현재 상영작</span>
		</a>
		</li>
</ul>

<ul>
	<li id = "choose">
		<a href="#" id = "current" type="button">
				<span class = "choice">상영 예정작</span>
		</a>
		</li>
</ul>

<ul>
	<li id = "choose"> 
		<button id = "current" type="button">
				<span class = "choice">상영 종료</span>
		</button>
		</li>
</ul>
<br>
<br>
<hr>
<p style = "font-size: 10pt; font-color:gray;">&nbsp; &nbsp; &nbsp; &nbsp; 클릭 시 상세 페이지로 넘어갑니다.</p>

<!-- 영화 출력 시작 -->
<ul class="movie-list">
				<c:forEach var="movie" items="${selectAllmovies}">
		<li class = "movie-item">
			<div class="movie-container">
					<a href="showMovieDetail?mcode=${movie.mcode}">
					<img src = "https://yellows3.s3.ap-northeast-2.amazonaws.com/share/poster/${movie.poster}.jpg" alt="${movie.mname}"> 
					</a>
				<p class = "mname">${movie.mname}</p>
				<p class= "runt">${movie.running_time}분</p>
			</div>
		</li>
				</c:forEach>
	</ul>

		</section>
		
		<script src="../assets/js/list.js"></script>

</body>
</html>