<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>

<!DOCTYPE html>
<html>
<head>

<meta charset="UTF-8">
<title>영화조회</title>
<link rel="stylesheet" href="../assets/css/style.css">
<meta charset="utf-8" />
		<meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=no" />
		
		<link rel="stylesheet" href="../css/layout.css" />
		<link rel="stylesheet" href="../assets/css/style.css" /> 
		<link rel="stylesheet" href="../assets/css/main.css" />
		
</head> 
<body>
<%@ include file="../css/layout.css" %>
	<h3>상영중인 영화 조회</h3>
	<div class="list">
	<form>
	<select name="column" id="column">
		<!-- 아래 value 속성값은 테이블 컬럼명과 동일하게 해야합니다. -->
		<option value="none">선택</option>
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
	</select> 
	<input type ="text" name="keyword" placeholder="검색어 입력하세요." value="${keyword }">
	<button type="button" id="search-btn">검색</button>
	<button type="button" onclick="location.href='list'">전체보기</button>
	</form>
	</div>
<hr>
<ul>
	<c:forEach items="${list }" var="vo" varStatus="status">
<li>
<ul class="row">
	<li><c:out value="${status.index+1 }"/></li>
	<li><c:out value="${vo.mcode}"/></li>
	<li><c:out value="${vo.mname }"/></li>
	<li><c:out value="${vo.genre }"/></li>
	<li><c:out value="${vo.director }"/></li>
	<li><c:out value="${vo.release_date }"/></li>
	<li><c:out value="${vo.producer }"/></li>
	<li><c:out value="${vo.running_time }"/></li>
	<li><c:out value="${vo.synopsys }"/></li>
	<li><c:out value="${vo.mgrade }"/></li>
	<li><c:out value="${vo.country }"/></li>
	<li><c:out value="${vo.mcast }"/></li>
</ul>

<script type="text/javascript" src="../assets/js/search.js"></script> 
</li>
</c:forEach>
</ul>
</body>
</html>