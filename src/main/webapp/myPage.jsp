<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>mypage</title>
</head>
<body>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>마이페이지</title>
</head>
<body>

<%
// 세션이 없거나 로그인 되어있지 않은 경우 로그인 페이지로 리다이렉트
if(session.getAttribute("username") == null) {
    response.sendRedirect("login.jsp");
    return;
}

// 세션에서 사용자 정보 가져오기
String username = (String) session.getAttribute("username");
String email = (String) session.getAttribute("email");
%>

<h1>마이페이지</h1>
<p>사용자 이름: <%= username %></p>
<p>이메일 주소: <%= email %></p>

<a href="logout.jsp">로그아웃</a>

</body>
</html>

</body>
</html>