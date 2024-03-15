<%@page import="mybatis.vo.Movie"%>
<%@page import="mybatis.dao.MovieDao"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
	<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
	<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
	<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
	

<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8">
<title>상세 정보</title>
		<link rel = "stylesheet" href="../assets/css/detail.css"/>
</head>
<body>
<h1>상세 정보</h1>
<hr>
<c:choose>
    <c:when test="${empty movie}">
        <p>해당하는 영화 정보가 없습니다.</p>
    </c:when>
    <c:otherwise>
        <div style = "float:left" >
            <img src="https://yellows3.s3.ap-northeast-2.amazonaws.com/share/poster/${movie.poster}.jpg" alt="${movie.mname}">
            <h2>${movie.mname}</h2>
            <p id = "detail">${movie.rating }세 이상 관람가</p>
            <p>${ movie.release_date} 개봉</p>
           <%--  <p>감독: ${ movie.director}</p>
            <p>제작사/배급사: ${ movie.producer}</p> --%>
            <p>상영 시간: ${ movie.running_time}분</p>
            <p>평점 | ☆ 10.0 / ${ movie.mgrade}</p>
            <a href="reserve" class="btn-design">예매하기</a>
            <hr>
            <p class = "p2">영화 정보</p>
            <p class = "p2">개요:  ${movie.genre} | ${ movie.country}</p>
            <p class = "p2">출연진: ${ movie.mcast} 등</p>
            <p class = "p2">줄거리: ${movie.synopsys}</p>
        </div>
        
    </c:otherwise>
</c:choose>
</body>
</html>