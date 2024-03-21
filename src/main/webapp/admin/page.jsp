<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8" />
		<meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=no" />
		<meta http-equiv="Cache-Control" content="no-cache, no-store, must-revalidate">
		<meta http-equiv="Pragma" content="no-cache">
		<meta http-equiv="Expires" content="0">
		<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet">
		<link rel="stylesheet" href="${pageContext.request.contextPath}/css/layout.css" />
	    <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/style.css" />  
	    <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/main.css" />
	    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/join.css" />
	    <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/header.css" />
	    <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/myPage.css" />
		<link rel="stylesheet" href="https://fonts.googleapis.com/css2?family=Material+Symbols+Outlined:opsz,wght,FILL,GRAD@20..48,100..700,0..1,-50..200" />
		<link rel="stylesheet" href="https://fonts.googleapis.com/css2?family=Material+Symbols+Outlined:opsz,wght,FILL,GRAD@20..48,100..700,0..1,-50..200" />
		<script src="https://kit.fontawesome.com/352c53403e.js" crossorigin="anonymous"></script>
		<style>
		form#cont {
   		 padding-top: 150px;
		}
		</style>
<title>관리자 페이지</title>
</head>
<body>
<%@include file="../layout/header.jsp" %>
<div>
<c:if test="${sessionScope.user.isadmin == 'Y' }">
<form id="cont">
<button class="join-btn" type="button" onclick="location.href='../admin/join.jsp'">관리자 등록</button><br>
<button class="join-btn" type="button" id="delete">관리자 해지</button><br>
<button class="join-btn" type="button" id="btn-open-modal">관리자 목록 보기</button><br>
</form>
</c:if>
</div>
<div class="modal">
    <div class="modal_body">
        <h2>관리자 목록</h2>
        <ul class="list" id="list">
        </ul>
        <button class="btn-close-modal">CLOSE</button>
    </div>
</div>

<script>
const modal = document.querySelector('.modal');
const btnOpenModal = document.querySelector('#btn-open-modal');
const btnCloseModal = document.querySelector('.btn-close-modal');

btnOpenModal.addEventListener("click", () => {
    modal.style.display = "flex";
    selectAdmin();
});

btnCloseModal.addEventListener("click", () => {
    modal.style.display = "none";
});
</script>
<script type="text/javascript" src="../assets/js/adminlist.js"></script>
 <script type="text/javascript" src="../assets/js/admindelete.js"></script>
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>