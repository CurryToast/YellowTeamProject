<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Cache-Control"
	content="no-cache, no-store, must-revalidate">
<meta http-equiv="Pragma" content="no-cache">
<meta http-equiv="Expires" content="0">
<title>영화 관리 - 스타라이트 시네마</title>
<link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/header.css" />	
<link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/main.css" />
<link rel="stylesheet" href="${pageContext.request.contextPath}/css/layout.css" />
<link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/movieManage.css" />
</head>
<body class="is-preload">
	<%@ include file="../layout/header.jsp"%>
	<div id="page-wrapper">
		<main>
			<c:if test="${sessionScope.user.isadmin == 'Y'}">
				<ul>
					<li>
						<a href="${pageContext.request.contextPath}/movie/register">영화 등록</a>
					</li>
				</ul>
			</c:if>
		</main>
	</div>
</body>
</html>