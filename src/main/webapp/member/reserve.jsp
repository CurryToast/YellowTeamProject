<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>스타 라이트 영화관</title>
<link rel="stylesheet" href="../assets/css/complete.css" />
</head>
<body>
<%@ include file="../layout/header.jsp" %>
<h3>예매 내역</h3>
<p>예매 취소는 상영일 하루 전까지만 가능합니다.</p>
<c:forEach items="${list}" var="ele">
	<div class="wrap">
		<!-- <div class="poster"> -->
		<img src="https://yellows3.s3.ap-northeast-2.amazonaws.com/share/poster/${ele.mname}.jpg" alt="${ele.mname}">
		<!-- </div> -->
	     <div class="container">
	      <div class="top-container">
	         <h1><c:out value="${ele.mname}"/></h1> 
	        <div class="inform">
	         <h2><c:out value="${ele.schedule}"/></h2>
	          <div class="schedule"></div>
	        </div>
	
	        <div class="info-container">
	        	<div class="reserve_date">
	            <p><c:out value="${ele.reserve_date}"/></p>
	            <h4>예매일자</h4>
	          </div>
	          <div class="member_code">
	            <p><c:out value="${ele.member_code}"/></p>
	            <h4>ID</h4>
	          </div>
	          <div class="movie_age">
	            <p><c:out value="${ele.rating}"/></p>
	            <h4>관람등급</h4>
	          </div>
	          <div class="theater">
	            <p><c:out value="${ele.name}"/> <c:out value="${ele.seat}"/> 좌석</p>
	            <h4>상영관</h4>
	          </div>
	          <div class="rcode">
	            <p><c:out value="${ele.rcode}"/></p>
	            <h4>예매번호</h4>
	          </div>
	         </div>
	       </div> 
	          <div class="cancel">
	            <button>예매 취소</button>
	          </div>
	       </div>
	       <p/><p/>
       </div>
</c:forEach>
           
           
           
      <button>홈으로 가기</button>
</body>
</html>