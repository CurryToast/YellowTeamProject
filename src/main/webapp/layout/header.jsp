<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<head>
<style>

@import url('https://fonts.googleapis.com/css2?family=Roboto&display=swap');
@import url('https://fonts.googleapis.com/css2?family=Noto+Sans+KR&display=swap');
html, body,div, span, ul,li,h2,h3,h4,h6{
    margin: 0;
    padding: 0;
    border: 0;
    vertical-align: baseline;
}
*{
    box-sizing: border-box;
}

body{
    font-family: 'Roboto','Noto Sans KR';
    letter-spacing: -0.02rem;
    color:  #222;
    user-select: none;
    font-size: 1.6rem;
}

ul{
    list-style: none;
    word-break: keep-all;
}

#header{
  background-color: #0E2759;
        position: fixed;
        top: 0;
        left: 0;
        width: 100%;
        z-index: 9999;
}

#header>.desktop-only>.sub-wrap{
        width: 100%;
        background-color: #04152b;
        margin: 0;
        padding: 0;
        border: 0;
        font: inherit;
        vertical-align: baseline;
        color: #fff;
        font: inherit;
        display: inline-block;
}


.sub-wrap .sub-con {
    display: flex;
    align-items: center;
    justify-content: space-between;
    width: auto;
    height: 3.6rem;
    padding: 0.5rem 4rem;
    margin: 0;
    letter-spacing: -.02rem;
    user-select: none;
    font: inherit;
    align-items: center;
}

.sub-wrap .sub-con .site-tab {
    display: flex;
    align-items: center;
    height: 100%;
    align-items: center;
}


.sub-wrap .sub-con .user-tab {
    display: flex;
    margin: 0;
}

.sub-wrap .sub-con .site-tab > li {
    height: 100%;
    display:inline-block;
    align-items: center;
    line-height: 3.6rem;
    padding: 0 2rem;
    font-size: 1.2rem;
    color: #fff;
    font: inherit;
    cursor: pointer;
    vertical-align: baseline;
    margin: 0;
    border: 0;
}
.sub-wrap .sub-con .user-tab > ul{
    display: flex;
    margin-block-start: 1em;
    margin-block-end: 1em;
    margin-inline-start: 0px;
    margin-inline-end: 0px;
}

.sub-wrap .sub-con .user-tab > li {
    /* margin-left: 5rem; */
    position: relative;
    padding: 0 2rem;
    font-size: 1.2rem;
    color: #fff;
    cursor: pointer;
    border-left: 40rem ;
    
}

.sub-wrap .sub-con .user-tab > li + li::before {
    content: '';
    position: absolute;
    top: 50%;
    left: 0;
    width: 0.1rem;
    height: 1rem;
    background-color: rgba(255,255,255,0.5);
    transform: translateY(-50%);
}

.nav-wrap .nav-con {
    position: relative;
    display: flex;
    align-items: center;
    justify-content: space-between;
    width: auto;
    height: 9.4rem;
    background-color: rgb(7,29,61);
    font: inherit;
    vertical-align: baseline;
    border: 0;
    padding: 0 4rem;
}

.nav-wrap .nav-con> .gnb-wrap> li{
    color: #fff;
    cursor: pointer;
    display: block;
    font-size: 1.5rem;
    font-weight: 300;
    margin: 0 5rem;
    display: inline-block;
    margin-right: 14rem;
}

img{
height: 50px;
}
ul#menu {
    display: flex;
    justify-content: space-evenly;
    align-items: center;
}
/* .wrap{
display:flex;
}
ul#menu {
    display: flex;
    justify-content: space-evenly
}
li{
color: white
}
ul#user {
    display: flex;
} */
</style>
</head>
<%-- 
<!-- Header -->
<div id="header">
	<!-- Nav -->
	<nav id="nav">
		<ul id="user">
			<li><a href="${pageContext.request.contextPath }/join"><span>회원가입</span></a></li>
			<li><a href="${pageContext.request.contextPath }/login">로그인</a></li>
			
				<c:if test="${sessionScope.user == null }">		
					<li><a href="${pageContext.request.contextPath }/join"><span>회원가입</span></a></li>
					<li><a href="${pageContext.request.contextPath }/login">로그인</a></li>
				</c:if>	
				<c:if test="${sessionScope.user != null }">		
					<li><a class="mainmenu" href="${pageContext.request.contextPath }/myPage"><span>마이페이지</span></a>
						
						
					<li><a href="${pageContext.request.contextPath }/logout">로그아웃</a></li>
				</c:if>	
			
		</ul>
		<div class="wrap">
			<img src="${pageContext.request.contextPath}/assets/img/logo.png" alt="logo">
		
		<ul id="menu">
			<li><a class="mainmenu" href="${pageContext.request.contextPath}">Home</a></li>								
			<li>
				<a class="mainmenu" href="${pageContext.request.contextPath}/movie/list">상영일정</a>
			<!-- 	<ul class="submenu">
					<li><a href="">하위메뉴 1</a></li>
					<li><a href="">하위메뉴 1</a></li>
				</ul> -->
			</li>
			<li>
				<a class="mainmenu" href="${pageContext.request.contextPath}/movie/search">영화검색</a>
					<!-- http://localhost:8088/YellowTeamProject/member/reserve?member_code=admin -->
					<li><a href="${pageContext.request.contextPath}/member/reserve">예매 내역</a></li>
				<!-- <ul class="submenu">
					<li><a href="">하위메뉴 1</a></li>
				</ul> -->
			</li>
			<li>
				<a>영화예매</a>
				<ul class="submenu">
					<li><a href="${pageContext.request.contextPath}/movie/list">상영일정</a></li>
					<li><a href="${pageContext.request.contextPath}/movie/reserve">예매하기</a></li>
					<li><a href="${pageContext.request.contextPath}/movie/complete">예매확인</a></li>
				</ul>
			</li>
		</div>
	</nav>
</div>
 --%>





<div id = "header">
        <div class="desktop-only">
            <div class="sub-wrap">
                <div class="sub-con">
                        <ul class="user-tab">
                        <li onclick="login()">로그인</li>
                        <li onclick="join()">회원가입</li>
                    </ul>
                </div>
            </div>
        <ul id="menu">
                    <ul class="site-tab">
                        <img src="${pageContext.request.contextPath}/assets/img/logo.png" alt="logo" onclick="location.href='index.jsp'"></li>
                    </ul>
			<li>
				<a class="mainmenu" href="${pageContext.request.contextPath}/movie/list">상영일정</a>
			<!-- 	<ul class="submenu">
					<li><a href="">하위메뉴 1</a></li>
					<li><a href="">하위메뉴 1</a></li>
				</ul> -->
			</li>
			<li>
				<a class="mainmenu" href="${pageContext.request.contextPath}/movie/search">영화검색</a>
					<!-- http://localhost:8088/YellowTeamProject/member/reserve?member_code=admin -->
					<li><a href="${pageContext.request.contextPath}/member/reserve">예매 내역</a></li>
				<!-- <ul class="submenu">
					<li><a href="">하위메뉴 1</a></li>
				</ul> -->
			</li>
			<li>
				<a>영화예매</a>
				<ul class="submenu">
					<li><a href="${pageContext.request.contextPath}/movie/list">상영일정</a></li>
					<li><a href="${pageContext.request.contextPath}/movie/reserve">예매하기</a></li>
					<li><a href="${pageContext.request.contextPath}/movie/complete">예매확인</a></li>
				</ul>
			</li>
		</div>
    </div>