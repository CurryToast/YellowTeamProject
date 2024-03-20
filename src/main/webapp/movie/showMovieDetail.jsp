<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
	<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
	<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
	<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
	

<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8">
<title>스타 라이트 시네마</title>
		<link rel="stylesheet" href="../assets/css/detail.css"/>
</head>
<body>
<%@ include file="../layout/header.jsp" %>
<hr>
<div>
<c:choose>
    <c:when test="${empty movie}">
        <p>해당하는 영화 정보가 없습니다.</p>
    </c:when>
    <c:otherwise>
        <div>
            <img src="https://yellows3.s3.ap-northeast-2.amazonaws.com/share/poster/${movie.poster}.jpg" alt="${movie.mname}">
        <div>
            <h2>${movie.mname}</h2>
            <p id = "detail">${movie.rating }세 이상 관람가</p>
            <p>${ movie.release_date} 개봉</p>
            <p>상영 시간: ${ movie.running_time}분</p>
            <p>평점 | ★ ${ movie.mgrade} / 10.0 </p>
            <p>장르: ${movie.genre }</p>
        </div>
     </div>
            <a href="reserve?movie_code=${movie.mcode}"
            			 id = "reservebtn" class="btn-design">예매하기</a>
			
            <hr>
            <a href="#" onclick = "showSynopsys()">줄거리</a>
            <a href="#" onclick = "showInfo()">주요 정보</a>
            
            <div id="synopsys" style="display:block;">
			    ${movie.synopsys}
			</div>
			
			<div id="info" style="display:none;">
			 <div> ${movie.country }</div>
			 <div> 감독: ${movie.director} </div> 
			 <div> 제작사/배급사: ${movie.producer } </div>
			 <div> 출연진: ${movie.mcast } </div>
			</div>
			
    </c:otherwise>
</c:choose>
</div>
		<script src="../assets/js/show.js"></script>
</body>
</html>