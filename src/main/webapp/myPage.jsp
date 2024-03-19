<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<!DOCTYPE html>
<html>
<head>
<title>마이 페이지</title>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Cache-Control"
	content="no-cache, no-store, must-revalidate">
<meta http-equiv="Pragma" content="no-cache">
<meta http-equiv="Expires" content="0">
<link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/header.css" />	
<link rel="stylesheet" href="assets/css/main.css" />
<link rel="stylesheet" href="css/layout.css" />
</head>
<body class="is-preload">
	<%@ include file="./layout/header.jsp"%>
	<div id="page-wrapper">
		<div class="mycol-2" style="width: 600px;">
			<div class="login">
				<h2>예매 내역</h2>
				<c:if test="${sessionScope.user.isadmin == 'Y' }">
					<form id="cont">
						<button class="join-btn  "type="button" onclick="location.href='admin/join.jsp'">관리자 등록</button>
						<button class="join-btn  "type="button" onclick="drop()">관리자 해지</button>
					</form>
					<ul>
						<li>
							<a href="${pageContext.request.contextPath}/movie/register">영화 등록</a>
						</li>
					</ul>
				</c:if>
			</div>
		</div>
	</div>
<script type="text/javascript">
  function drop() {
	  const res = prompt('관리자 권환을 해지 하시겠습니까?  \'해지\' 라고 입력해주세요.')
	  if(res==='해지')
		  location.href='member/drop';
	  else
		  alert('입력하신 글자를 다시 확인하세요.');
  }
</script>	
<script src="${pageContext.request.contextPath}/assets/js/jquery.min.js"></script>
<script src="${pageContext.request.contextPath}/assets/js/jquery.dropotron.min.js"></script>
<script src="${pageContext.request.contextPath}/assets/js/browser.min.js"></script>
<script src="${pageContext.request.contextPath}/assets/js/breakpoints.min.js"></script>
<script src="${pageContext.request.contextPath}/assets/js/swipper.min.js"></script>
<script src="${pageContext.request.contextPath}/assets/js/util.js"></script>
<script src="${pageContext.request.contextPath}/assets/js/main.js"></script>
<script src="${pageContext.request.contextPath}/assets/js/map.daum.js"></script>
<script src="${pageContext.request.contextPath}/assets/js/script.js"></script>
</body>
</html>