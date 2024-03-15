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
<c:forEach items="${list}" var="ele">
     <div class="container">
      <div class="top-container">
         <h1><c:out value="${ele.MNAME}"/></h1> 
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
            <p><c:out value="${ele.theater}"/>점 <c:out value="${ele.seat}"/> 좌석</p>
            <h4>상영관</h4>
          </div>
          <div class="rcode">
            <p><c:out value="${ele.rcode}"/></p>
            <h4>예매번호</h4>
          </div>
         </div>
       </div> 
          <div class="cancel">
            <p class="canceltext" style="text-align:center"><i>예매 취소는 전화 및 방문시 가능합니다.</i></p>
          </div>
       </div>
       <p/><p/>
</c:forEach>
           
           
           
      <button>홈으로 가기</button>
</body>
</html>