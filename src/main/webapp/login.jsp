<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<!DOCTYPE html>
<html>
<head>
<title>영화관</title>
<meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <meta http-equiv="Cache-Control" content="no-cache, no-store, must-revalidate">
		<meta http-equiv="Pragma" content="no-cache">
		<meta http-equiv="Expires" content="0">
  <link rel="stylesheet" href="assets/css/main.css" />
  <link rel="stylesheet" href="assets/css/login.css" />
 <link rel="stylesheet" href="css/layout.css" />
 <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/header.css" />	
</head>
<body class="is-preload">
			<%@ include file="./layout/header.jsp" %>
<div id="page-wrapper">
		<div class="mycol-2" style="width:450px;">
		</div>
		<div class="mycol-2" style="width:600px;">				
				<div class="login">
				  <h2>회원 로그인</h2>
				  <label id="incorrect">계정 정보가 일치하지 않습니다.</label>
				  <form action="login" method="post">
				    <div class="mb-3">
				      <label for="code" class="member-id">아이디</label>
				      <input class="form-control" id="code" placeholder="Enter id" type="text" name="code" required>
				    </div>
				    <div class="mb-3">
				      <label for="pwd">패스워드</label>
				      <input type="password" class="form-control" id="password" placeholder="Enter password" 
				      		name="password" required>
				    </div>
				    <div>
				    </div>
				    <div class="form-check mb-3">
				      <label class="form-check-label">
				        <input class="form-check-input" type="checkbox" name="remember"> Remember me
				      </label>
				    </div>
				    <button class="btn-login">로그인</button>
				  </form>
				  <hr>
				  <div class="find">
				  <a href="join" class="f-sm">회원가입.</a>
            	  <a href="help" class="f-sm">비밀번호 찾기</a>
            	  </div>
				</div>
		</div>
</div>
<script>
console.log('${cookie.incorrect}')
var cookies = document.cookie.split(';');
cookies.forEach(function(cookie) {
    if (cookie.trim().startsWith('incorrect=')) {
        var value = cookie.split('=')[1];
        if (value === 'y') {
            document.getElementById('incorrect').style.display = 'inline-block';
            document.cookie = 'incorrect' + "=; expires=Thu, 01 Jan 1970 00:00:10 GMT; path=/;";
        }
    }
});
</script>
  		<!-- Scripts -->
			<script src="assets/js/jquery.min.js"></script>
			<script src="assets/js/jquery.dropotron.min.js"></script>
			<script src="assets/js/browser.min.js"></script>
			<script src="assets/js/breakpoints.min.js"></script>
			<script src="assets/js/util.js"></script>
			<script src="assets/js/main.js"></script>
</body>
</html>
