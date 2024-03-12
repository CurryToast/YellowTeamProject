<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
			<!-- Header -->
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