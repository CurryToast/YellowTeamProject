<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<header class="header">
	<div class="container">
		<div class="header-area">
			<div class="logo">
				<a href="index-2.html"><img src="assets/img/logo.png" alt="logo" /></a>
			</div>
			<div class="header-right">
				<form action="#">
					<select>
						<option value="Movies">Movies</option>
						<option value="Movies">Movies</option>
						<option value="Movies">Movies</option>
					</select>
					<input type="text"/>
					<button><i class="icofont icofont-search"></i></button>
				</form>
				<ul>
					<li>
						<a href="${pageContext.request.contextPath}/join"><span>회원가입</span></a>
					</li>
					<li><a href="#">Welcome Guest!</a></li>
					<li><a class="login-popup" href="#">Login</a></li>
				</ul>
			</div>
			<div class="menu-area">
				<div class="responsive-menu"></div>
			    <div class="mainmenu">
                          <ul id="primary-menu">
                              <li><a class="active" href="index-2.html">Home</a></li>
                              <li><a href="movies.html">Movies</a></li>
                              <li><a href="celebrities.html">CelebritiesList</a></li>
                              <li><a href="top-movies.html">Top Movies</a></li>
                              <li><a href="blog.html">News</a></li>
						<li><a href="#">Pages <i class="icofont icofont-simple-down"></i></a>
							<ul>
								<li><a href="blog-details.html">Blog Details</a></li>
								<li><a href="movie-details.html">Movie Details</a></li>
							</ul>
						</li>
                              <li><a class="theme-btn" href="#"><i class="icofont icofont-ticket"></i> Tickets</a></li>
                          </ul>
			    </div>
			</div>
		</div>
	</div>
</header>
				<div id="header">
					<!-- Logo -->
					<!-- Nav -->
						<nav id="nav">
							<ul id="user">
								<li><a href="${pageContext.request.contextPath}/join"><span>회원가입</span></a></li>
								<li><a href="${pageContext.request.contextPath}/login">로그인</a></li>
								<!--
									<c:if test="${sessionScope.user == null }">		
										<li><a href="${pageContext.request.contextPath}/join"><span>회원가입</span></a></li>
										<li><a href="${pageContext.request.contextPath}/login">로그인</a></li>
									</c:if>	
									<c:if test="${sessionScope.user != null }">		
										<li><a href="#"><span>${user.name }님</span></a>
											<ul>
												<li><a href="${pageContext.request.contextPath}/member/modify">회원정보</a></li>
												<li><a href="#">마이페이지</a></li>
											</ul>
										</li>
										<li><a href="${pageContext.request.contextPath}/logout">로그아웃</a></li>
									</c:if>	
								-->
							</ul>
							<ul>
								<li><a href="${pageContext.request.contextPath}">Home</a></li>
								<li class="dropdown-menu">
									<a href="#">상영일정</a>
									<ul>
										<li><a href="${pageContext.request.contextPath}/">상영일정 1</a></li>
										<li><a href="${pageContext.request.contextPath}/">상영일정 2</a></li>
									</ul>
								</li>							
								<li class="dropdown-menu">
									<a href="#">영화검색</a>
									<ul>
										<li><a href="${pageContext.request.contextPath}/">영화검색 1</a></li>
										<li><a href="${pageContext.request.contextPath}/">영화검색 2</a></li>
									</ul>
								</li>
							</ul>
						</nav>
				</div>