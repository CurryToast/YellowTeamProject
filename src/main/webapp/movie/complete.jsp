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
<%@ include file="../layout/header2.jsp" %>
    <div class="container">
      <!-- TOP CONTAINER -->
      <div class="top-container">
        <h1><c:out value="${list.mname}"/>영화제목</h1>
        <div class="inform">
          <h2><c:out value="${list.schedule}"/>2024-03-14  10:35~12:00</h2>
          <div class="circle"></div>
        </div>

        <div class="info-container">
        	<div class="reserve_date">
            <p><c:out value="${list.reserve_date}"/>2024-03-13 22: 24</p>
            <h4>예매일자</h4>
          </div>
          <div class="member_code">
            <p><c:out value="${list.member_code}"/>admin</p>
            <h4>ID</h4>
          </div>
          <div class="movie_age">
            <p><c:out value="${list.rating}"/>12세</p>
            <h4>관람등급</h4>
          </div>
          <div class="theater">
            <p><c:out value="${list.theater}"/>점 <c:out value="${reserve.seat}"/></p>
            <h4>상영관</h4>
          </div>
          <div class="rcode">
            <p><c:out value="${list.rcode}"/>3</p>
            <h4>예매번호</h4>
          </div>
          <div class="cancel">
            <p class="canceltext"><i>예매 취소는 상영 시작 하루전까지만 가능합니다.</i></p>
          </div>
          </div>
        </div>
      </div>
      <button href="index.jsp">홈으로 가기</button>
</body>
</html>