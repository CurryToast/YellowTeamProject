<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>로그아웃 - 스타라이트 시네마</title>
</head>
<body>
	<script type="text/javascript">
		alert('로그아웃 되었습니다.')
		location.href='${pageContext.request.contextPath}'
	</script>
</body>
</html>