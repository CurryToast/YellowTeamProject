<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!-- Header -->
<div id="header">
	<!-- Nav -->
	<nav id="nav">
		<ul id="user">
			<c:if test="${sessionScope.user == null}">		
				<li><a href="${pageContext.request.contextPath}/join"><span>회원가입</span></a></li>
				<li><a href="${pageContext.request.contextPath}/login">로그인</a></li>
			</c:if>	
			<c:if test="${sessionScope.user != null }">		
				<li>
					<a class="mainmenu" href="${pageContext.request.contextPath}/myPage">
						<span>마이페이지</span>
					</a>
					<ul class="submenu">
						<li><a href="${pageContext.request.contextPath}/movie/complete">예매확인</a></li>
					</ul>
				</li>
				<li><a href="${pageContext.request.contextPath }/logout">로그아웃</a></li>
			</c:if>
		</ul>
		<ul id="menu">
									
	   		<li>
				<a class="mainmenu" href="${pageContext.request.contextPath}/movie/reserve">영화예매</a>
				<ul class="submenu">
					<li><a href="${pageContext.request.contextPath}/movie/list">상영일정</a></li>
					<li><a href="${pageContext.request.contextPath}/movie/reserve">예매하기</a></li>
				</ul>
			</li>
			<li><a class="mainmenu" href="${pageContext.request.contextPath}"><img src="/upload/starlight.png" alt="" style="width : 200px"/></a></li>		
			<li>
				<a class="mainmenu" href="${pageContext.request.contextPath}/movie/search">영화검색</a>
			<li>
	<%-- 			<a class="mainmenu" href="${pageContext.request.contextPath}/movie/reserve">영화예매</a> --%>
				<%-- <li><a href="${pageContext.request.contextPath}/movie/list">상영일정</a></li> --%>
					<%-- <li><a href="${pageContext.request.contextPath}/movie/reserve">예매하기</a></li> --%>
				<%-- 	<li><a href="${pageContext.request.contextPath}/movie/complete">예매확인</a></li> --%>
	</li>
	</ul>
	</nav>
</div>
