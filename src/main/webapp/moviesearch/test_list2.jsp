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
	<title>영화관</title>
	<meta charset="utf-8" />
	<link rel="stylesheet" href="../assets/css/main.css" />
	<link rel="stylesheet" href="../css/layout.css" />
</head>
<body class="is-preload">
		<!-- Header -->
		<%@ include file="../layout/header.jsp"%>
		<!-- Main -->
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
							<button type="submit" name="search" value="${paging.search}">검색</button>
							<button type="button" onclick="location.href='list'">전체보기</button>
						</form>
					</div>
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
					
</body>
</html>