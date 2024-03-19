<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE HTML>
<!--
	Arcana by Pixelarity
	pixelarity.com | hello@pixelarity.com
	License: pixelarity.com/license
-->
<html>
<head>
	<title>스타라이트 시네마</title>
	<meta charset="utf-8" />
	<meta name="viewport"
		content="width=device-width, initial-scale=1, user-scalable=no" />
<meta http-equiv="Cache-Control" content="no-cache, no-store, must-revalidate">
<meta http-equiv="Pragma" content="no-cache">
<meta http-equiv="Expires" content="0">
<title></title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet">
<link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/header.css" />
<link rel="stylesheet" href="../css/layout.css" />
<link rel="stylesheet" href="../assets/css/style.css" />  <!-- 회원가입 (temp.css 는 미사용)-->
<link rel="stylesheet" href="../assets/css/main.css" />
	<link rel="stylesheet" href="../assets/css/search.css">
	<link rel="stylesheet"
		href="${pageContext.request.contextPath }/css/list.css?v=3">
		
<!-- 		<script src="https://kit.fontawesome.com/352c53403e.js" crossorigin="anonymous"></script>	 -->
</head>
<body class="is-preload">
	<div id="page-wrapper">
		<!-- Header -->
		<%@ include file="../layout/header.jsp"%>
		<!-- Main -->
		<section class="wrapper style1" id="moivesearch">
			<div class="container">
				<div id="content">
					<!-- Content -->
					<article>
						<header class="guide">
							<h3>스타 라이트 영화관</h3>
							<p>현재 상영중인 영화</p>
						</header>
					</article>
					<hr style="color: white;">
					<div id="search">
						<form>
							<!-- Get 방식 처리 -->
							<select name="column" id="column">
								<!-- 아래 value 속성값은 테이블 컬럼명과 동일하게 해야합니다. -->
								<option value="">선택</option>
								<option value="mname">제목</option>
								<option value="genre">장르</option>
								<option value="director">감독</option>
								<option value="release_date">개봉일</option>
								<option value="producer">제작사 및 배급사</option>
								<option value="running_time">상영시간</option>
								<option value="rating">관람등급</option>
								<option value="mgrade">평점</option>
								<option value="country">제작 국가</option>
								<option value="mcast">배우</option>
							</select> <input type="text" name="findText" placeholder="검색할 단어를 입력하세요.">
							<button type="button" id="search-btn">검색</button>
							<button type="button" onclick="location.href='search'">전체보기</button>
						</form>
					</div>
					<section id="searchlist">
					
					</section> 
					<hr>
					<h3 id="listpage"></h3>
					<div id="listpro">
					
							<%-- <c:forEach var="vo" items="${list}"> --%>
									 <!-- 현재페이지 번호 세션에 저장했으므로 파라미터 전달 삭제 -->
		<%-- <a href="read?mcode=${vo.mcode}&page=${paging.currentPage}" class="mname"> --%>
			<%-- <img src="https://yellows3.s3.ap-northeast-2.amazonaws.com/share/poster/${vo.poster}.jpg" > --%>
		<!-- </a> -->
												<%-- <c:out value="${vo.mname }" />
												개봉일 : <c:out value="${vo.release_date }" />
												상영시간 : <c:out value="${vo.running_time }" />
												관람등급 : <c:out value="${vo.rating }" />
												평점 : <c:out value="${vo.mgrade }" /> --%>
						<%-- 	</c:forEach> --%>
					</div>
				</div>
			</div>
			<%-- <div style="float: right; margin: 40px;">
									<a href="write?page=${paging.currentPage }" class="button" >글쓰기</a>
							<!-- 로그인 상태가 아니면 로그인으로 이동으로 변경 -->                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                           
							<c:if test="${user.userid=='admin' }">
							<a href="write" class="write-btn">관리자 :: 글쓰기</a> 
							</c:if>--%>
			</section> 	
			</div>

	<%-- 	<!--  -->
			<div style="width:100%;margin: auto;padding: 10px;text-align: center;float: none;" class="list">
				전체 글 개수 : <c:out value="${paging.totalCount }"/> <br>
				<hr>
				<a class="pagenum" href="?page=1">&lt;&lt;</a>   <!--(1) 첫번째 페이지 1번으로 이동 -->
				
				<!--(2)  실행하면서 파악해보세요. --> <!-- 요청은 ListController가 받음.page파라미터 변경됨. -->
				<a class="pagenum" href="?page=${paging.startPage-1 }"      
						style='<c:if test="${paging.startPage==1 }">display:none;</c:if>' >&lt;</a>
				
				<!--(3) 페이지 범위 startPage 부터 endPage 까지 반복 -->
				<c:forEach var="i" begin="${paging.startPage }" end="${paging.endPage }">
					<a class="pagenum ieach" href="?page=${i }"><c:out value="${i }"/></a>
				</c:forEach>
				
				<!--(4)  실행하면서 파악해보세요. -->
				<a class="pagenum" href="?page=${paging.endPage+1 }"
						style='<c:if test="${paging.endPage==paging.totalPage }">display:none;</c:if>'	>&gt;</a>
						
				<a class="pagenum" href="?page=${paging.totalPage }">&gt;&gt;</a>  <!--(5) 가장 마지막 페이지로 이동 -->
			</div>
	</div> --%> --%>
<!-- 	<div class="mycol-2" style="width:20rem;height: 50rem;float:right;">
			<img alt=""  width="100%" height="100%"style="object-fit:cover;" src="../images/bookcafe2.jpg">
	</div> -->
	<div data-num="5" id="datanum"></div>


 <script type="text/javascript">
	const pnums = document.querySelectorAll('.ieach');
	pnums.forEach(function(item){
		console.log(item);
		/* item 번호가 현재 페이지 이면 글꼴 스타일을 다르게함. */
		if(item.innerHTML=='${paging.currentPage}') {    
			item.classList.add('current')
		}else{
			item.classList.remove('current')
		}
	});

	

	<!-- Scripts -->
	<script src="../assets/js/jquery.min.js"></script>
	<script src="../assets/js/jquery.dropotron.min.js"></script>
	<script src="../assets/js/browser.min.js"></script>
	<script src="../assets/js/breakpoints.min.js"></script>
	<script src="../assets/js/main.js"></script>
	<script src="../js/nav.js"></script>

	<script type="text/javascript" src="${pageContext.request.contextPath}/assets/js/moviesearch.js"></script>

</body>
</html>