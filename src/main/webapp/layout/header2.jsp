<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>head</title>
<link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/header2.css" /> 

</head>
<body>
		<!-- Header -->
			<div id="header" class="alt">
				<a class="logo" href="index.html"></a>
				<nav id="nav">
					<ul id="user">
						<li class="active"><a href="${pageContext.request.contextPath}/index.jsp">Home</a></li>
						<li>
							<a href="${pageContext.request.contextPath}/movie/list">상영일정</a>
							<ul>
								<li><a href="#">Link One</a></li>
								<li><a href="#">Link Two</a></li>
								<li><a href="#">Link Three</a></li>
							</ul>
						</li>
						<li>
							<a href="${pageContext.request.contextPath}/movie/search">영화검색</a>
							<ul>
								<li><a href="#">Link One</a></li>
								<li><a href="#">Link Two</a></li>
								<li><a href="#">Link Three</a></li>
							</ul>
						</li>
						<li>
							<a>영화예매</a>
							<ul class="submenu">
								<li><a href="${pageContext.request.contextPath}/movie/list">상영일정</a></li>
								<li><a href="${pageContext.request.contextPath}/movie/reserve">예매하기</a></li>
								<li><a href="${pageContext.request.contextPath}/movie/complete">예매확인</a></li>
							</ul>
						</li>
						<li><a href="${pageContext.request.contextPath }/join"><span>회원가입</span></a></li>
						<li><a href="${pageContext.request.contextPath }/login">로그인</a></li>
					</ul>
				</nav>
			</div>

		<!-- Header -->
		<script type="text/javascript" src="${pageContext.request.contextPath}/assets/js/header.js"></script>
		<!-- Scripts -->
			<script src="${pageContext.request.contextPath}/assets/js/jquery.min.js"></script>
			<script src="${pageContext.request.contextPath}/assets/js/jquery.dropotron.min.js"></script>
			<script src="${pageContext.request.contextPath}/assets/js/jquery.scrollex.min.js"></script>
			<script src="${pageContext.request.contextPath}/assets/js/browser.min.js"></script>
			<script src="${pageContext.request.contextPath}/assets/js/breakpoints.min.js"></script>
			<script src="${pageContext.request.contextPath}/assets/js/util.js"></script>
			<script src="${pageContext.request.contextPath}/assets/js/main.js"></script>
		
</body>
</html>