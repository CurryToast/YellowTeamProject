<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<head>
<link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/header.css" />
</head>
<div id = "header">
            <div class="sub-wrap">
                <div class="sub-con">
                        <ul class="user-tab">
                        <li onclick="login()">로그인</li>
                        <li onclick="join()">회원가입</li>
                    </ul>
                </div>
            </div>
        <ul class="menu">
                    <ul class="site-tab">
                        <img src="${pageContext.request.contextPath}/assets/img/logo.png" alt="logo" onclick="location.href='${pageContext.request.contextPath}/YellowTeamProject/index.jsp'"></li>
                    </ul>
			<li>
				<a class="mainmenu" href="/YellowTeamProject/movie/list">상영일정</a>
			<!-- 	<ul class="submenu">
					<li><a href="">하위메뉴 1</a></li>
					<li><a href="">하위메뉴 1</a></li>
				</ul> -->
			</li>
			<li>
				<a class="mainmenu" href="${pageContext.request.contextPath}/YellowTeamProject/movie/search">영화검색</a>
					<!-- http://localhost:8088/YellowTeamProject/member/reserve?member_code=admin -->
					<li><a href="${pageContext.request.contextPath}/YellowTeamProject/member/reserve">예매 내역</a></li>
				<!-- <ul class="submenu">
					<li><a href="">하위메뉴 1</a></li>
				</ul> -->
			</li>
			<li>
				<a>영화예매</a>
				<ul class="submenu">
					<li><a href="${pageContext.request.contextPath}/YellowTeamProject/movie/list">상영일정</a></li>
					<li><a href="${pageContext.request.contextPath}/YellowTeamProject/movie/reserve">예매하기</a></li>
					<li><a href="${pageContext.request.contextPath}/YellowTeamProject/movie/complete">예매확인</a></li>
				</ul>
			</li>
		</div>