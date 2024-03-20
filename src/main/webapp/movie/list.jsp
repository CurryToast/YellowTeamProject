<%@ page import="mybatis.dao.MovieDao"%>
<%@ page import="mybatis.vo.Schedule" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
	<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
	<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
	<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>스타 라이트 시네마</title>
	 <link rel = "stylesheet" href="../assets/css/movielist.css"/>
</head>
<body>
	<%@ include file="../layout/header.jsp" %>
	
<section id = "movieList">
			<h3>상영 일정</h3>
			<hr style="color:white;">
			
			<a href="list?type=all">전체 보기</a>
			<a href="list?type=ing">현재 상영작</a>
			<a href="list?type=later">상영 예정작</a>
			<a href="list?type=end">상영 종료작</a>
			
<div class = "movie-container">
		<ul class = "movie-list">
			<li class = "movie-item">
				<c:forEach var="movie" items = "${list}">
                <a href="showMovieDetail?mcode=${movie.mcode}">
                    <img class = "img-style" src="https://yellows3.s3.ap-northeast-2.amazonaws.com/share/poster/${movie.poster}.jpg" alt="${movie.mname}">
                </a>
                    <p class="mname">${movie.mname}</p>
                    <p class="runt">${movie.running_time}분</p>
	   		</c:forEach>
	   		</li>
       </ul>	
</div>

			
<!-- 상세 페이지 안내 메시지 -->
<br>
<br>
<hr>
<p style = "font-size: 10pt; font-color:gray;">&nbsp; &nbsp; &nbsp; &nbsp; 클릭 시 상세 페이지로 넘어갑니다.</p>

		</section>
</body>
</html>