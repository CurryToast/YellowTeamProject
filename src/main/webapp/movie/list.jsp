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
	 <link rel = "stylesheet" href="../assets/css/movieList.css"/>
</head>
<body>
	<%@ include file="../layout/header.jsp" %>
	
<section id = "movieList">
			<a href="list?type=all" class ="line" >전체 보기</a> |
			<a href="list?type=ing" class = "line" >현재 상영작</a> | 
			<a href="list?type=later" class = "line" >상영 예정작</a> |
			<a href="list?type=end" class = "line" >상영 종료작</a>
			<hr>
			
			<div class="movie-container">
    <ul class="movie-list col-5 row-5">
        <c:forEach var="movie" items="${list}">
            <li class="movie-item">
            <p class = "image-style">
                <a href="showMovieDetail?mcode=${movie.mcode}">
                    <img class="img-style" src="https://yellows3.s3.ap-northeast-2.amazonaws.com/share/poster/${movie.poster}.jpg" alt="${movie.mname}">
                </a>
             </p>
                <p class="mname">${movie.mname}</p>
                <c:choose>
                    <c:when test="${movie.rating == 0}">
                        <p class="detail green">${movie.rating}세 이상 관람가</p>
                    </c:when>
                    <c:when test="${movie.rating == 12}">
                        <p class="detail yellow">${movie.rating}세 이상 관람가</p>
                    </c:when>
                    <c:when test="${movie.rating == 15}">
                        <p class="detail blue">${movie.rating}세 이상 관람가</p>
                    </c:when>
                    <c:when test="${movie.rating == 18}">
                        <p class="detail red">${movie.rating}세 이상 관람가</p>
                    </c:when>
                </c:choose>
                <p class="runt">${movie.running_time}분</p>
            </li>
        </c:forEach>
    </ul>
</div>
			
<!-- 상세 페이지 안내 메시지 -->
<br>
<br>
<hr>
<p style = "font-size: 10pt; font-color:gray;">&nbsp; &nbsp; &nbsp; &nbsp; 클릭 시 상세 페이지로 넘어갑니다.</p>

		</section>
		<script src = "../assets/js/list.js"></script>
</body>
</html>