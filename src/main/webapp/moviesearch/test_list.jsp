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
	<title>커피24 북카페</title>
	<meta charset="utf-8" />
	<meta name="viewport"
		content="width=device-width, initial-scale=1, user-scalable=no" />
	<link rel="stylesheet" href="../assets/css/main.css" />
	<link rel="stylesheet" href="../css/layout.css" />
	<link rel="stylesheet"
		href="${pageContext.request.contextPath }/css/list.css?v=3">
		<script src="https://kit.fontawesome.com/352c53403e.js" crossorigin="anonymous"></script>	
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
							<h3>스타 레이드 영화관</h3>
							<p>현재 상영중인 영화</p>
						</header>
					</article>
					<hr style="color: white;">
					<div id="search">
						<form action="list">
							<!-- Get 방식 처리 -->
							<select name="column" id="column">
								<!-- 아래 value 속성값은 테이블 컬럼명과 동일하게 해야합니다. -->
								<option value="none">선택</option>
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
							</select> <input type="text" name="findText" value="${paging.findText }"
								placeholder="검색할 단어를 입력하세요.">
							<button type="button" id="search-btn">검색</button>
							<button type="button" onclick="location.href='list'">전체보기</button>
						</form>
					</div>
					<hr>	
						<script type="text/javascript">
		const form = document.forms[0]
		document.querySelectorAll('option').forEach(ele => {
			if(ele.value=='${paging.column}')
				ele.selected=true
			else	
				ele.selected=false
		})
		document.querySelector('#search-btn').addEventListener('click',
					() => {
						const find = document.forms[0].findText
						const column = document.forms[0].column
						if(find.value ==='' || column.value ==='none') {
							alert('검색어 입력과 검색 항목 선택을 하세요.')
							find.focus()
						}else {
							 document.forms[0].submit();
						}
					})
</script>
					<div>
						<ul id="main">
							<li>
								<ul class="row">
									<li>번호</li>
									<li>제목</li>
								</ul>
							</li>

							<c:forEach var="vo" items="${list}">
								<li>
									<ul class="row">
										<li><c:out value="${vo.mcode }" /></li>
										<li><a href="read?idx=${vo.mcode }" class="title"> <!-- 현재페이지 번호 세션에 저장했으므로 파라미터 전달 삭제 -->
												<c:out value="${vo.mname }" />
											</a>
										</li>
										<li>
											<fmt:formatDate value="${vo.release_Date }" pattern="yyyy-MM-dd"
												var="release_Date" /> 
										</li>
									</ul>
								</li>
							</c:forEach>
						</ul>
					</div>
					<div class="list"
						style="width: 700px; margin: auto; padding: 10px; text-align: center;">
						전체 글 개수 :
						<c:out value="${paging.totalCount }" />
						<br>
						<hr>
						<!-- <a class="pagenum" href="javascript:page('1')">&lt;&lt;</a> -->
						<!--(1) 첫번째 페이지 1번으로 이동 -->

						<!--(2)  실행하면서 파악해보세요. -->
						<!-- 요청은 ListController가 받음.page파라미터 변경됨. -->
						<a class="pagenum"
							href="javascript:page('${paging.startPage-1 }')"
							style='<c:if test="${paging.startPage==1 }">display:none;</c:if>'>&lt;</a>

						<!--(3) 페이지 범위 startPage 부터 endPage 까지 반복 -->
						<c:forEach var="i" begin="${paging.startPage }"
							end="${paging.endPage }">
							<a class="pagenum ieach" href="javascript:page('${i }')"> <c:out
									value="${i }" />
							</a>
						</c:forEach>

						<!--(4)  실행하면서 파악해보세요. -->
						<a class="pagenum" href="javascript:page('${paging.endPage+1 }')"
							style='<c:if test="${paging.endPage==paging.totalPage }">display:none;</c:if>'>&gt;</a>

						<%-- <a class="pagenum" href="javascript:page('${paging.totalPage }')">&gt;&gt;</a> --%>
						<!--(5) 가장 마지막 페이지로 이동 -->
					</div>
				</div>
			</div>
			<div style="float: right; margin: 40px;">
							<%-- 		<a href="write?page=${paging.currentPage }" class="button" >글쓰기</a> --%>
							<!-- 로그인 상태가 아니면 로그인으로 이동으로 변경 -->                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                           
							<c:if test="${user.userid=='admin' }">
							<a href="write" class="write-btn">관리자 :: 글쓰기</a> 
							</c:if>
			</div>
		</section>
<script type="text/javascript">
	const pnums = document.querySelectorAll('.ieach');
	pnums.forEach(function(item){
		/* item 번호가 현재 페이지 이면 글꼴 스타일을 다르게함. */
		if(item.innerHTML=='${paging.currentPage}') {    
			item.style.color = 'black';
			item.style.fontWeight = 'bold';
		}else{
			item.style.color = '#37966f';
		}
	});
	function page(pno){  /* 페이지이동 url을 만들고 이동하기 */
		let url = '?page=' + pno
		if('${paging.findText }'!='')
			url += '&findText=${paging.findText}&column=${paging.column}'
		location.href=url	
	}
	function readOne(idx){
		let url = 'read?idx='+idx+'&page=' + ${paging.currentPage}
		if('${paging.findText }'!='')
			url += '&findText=${paging.findText}&column=${paging.column}'
		location.href=url	
	}
	
</script>

	<div data-num="1" id="datanum"></div>
	</div>

	<!-- Scripts -->
	<script src="../assets/js/jquery.min.js"></script>
	<script src="../assets/js/jquery.dropotron.min.js"></script>
	<script src="../assets/js/browser.min.js"></script>
	<script src="../assets/js/breakpoints.min.js"></script>
	<script src="../assets/js/util.js"></script>
	<script src="../assets/js/main.js"></script>
	<script src="../js/nav.js"></script>


</body>
</html>