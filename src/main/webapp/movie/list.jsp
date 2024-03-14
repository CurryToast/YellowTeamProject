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
<%@ include file="../layout/header2.jsp" %>
<section id = "movielist">
         <h3>상영 일정</h3>
         <hr style="color:white;">
         
<ul>
   <li>
         <button id = "allmovie" type = "button">
            <span>전체</span>
         </button>
   </li>
   
   <li>
      <button id = "current" type="button">
            <span>현재 상영작</span>
      </button>
   </li>
   
   <li>
      <button id = "upcoming" type="button">
         <span>상영 예정작</span>
      </button>
   </li>
   
   <li>
      <button id = "end" type="button">
         <span>상영 종료</span>
      </button>
   </li>
</ul>
   
   <div id = "allContent" class="content">전체</div>
   <div id = "currentContent" class="content">현재 상영작 정보</div>
   <div id = "upcomingContent" class="content">예정 상영작 정보</div>
   <div id = "endContent" class="content">상영 종료작 정보</div>
   
      <c:if test = "${user != null}">
            <div style = "text-align:center;">
         </c:if>
      <div id = "mainarea">
      <%-- <c:forEach var = "bo" items="${saleList }"> --%>
      <img src = "../images/${bo.cover }" alt="${bo.title }">
      
      <script src="../assets/js/movilist.js"></script>
            
      </div>
      </section>
      <button class="choice" type="POST">선택</button>

</body>
</html>