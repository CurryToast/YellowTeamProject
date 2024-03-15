<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>마이 페이지</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Cache-Control" content="no-cache, no-store, must-revalidate">
<meta http-equiv="Pragma" content="no-cache">
<meta http-equiv="Expires" content="0">
  <link rel="stylesheet" href="assets/css/main.css" />
 <link rel="stylesheet" href="css/layout.css" />
</head>
<body class="is-preload">
			<%@ include file="./layout/header.jsp" %>
	 <div id="page-wrapper">
		<div class="mycol-2" style="width:930px;">
	</div>
			<div>
			<form  id="form">
				<h2>나의 구매내역</h2>		
				<hr>
				<a class="button adm" href="javascript:execute(1)">관리자:등록</a>  <!-- 자바스크립트 함수:인자값 1은 수정 -->
				<!--  예시 : 글 비밀번호 입력하여 삭제. -->
				<button class="join-btn  "type="button" onclick="drop()">관리자:탈퇴</button>
				</form>
			</div>
		</div>
</body>
</html>
