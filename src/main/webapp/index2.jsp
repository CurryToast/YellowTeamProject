<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<!DOCTYPE HTML>
<!--
	Arcana by Pixelarity
	pixelarity.com | hello@pixelarity.com
	License: pixelarity.com/license
-->
<html>
<head>
	<title>스타 라이트 시네마</title>
	<meta charset="utf-8" />
	<link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/header2.css" /> 
	<style>
	ul{ list-style: none;
	}
	</style>
</head>
<body class="is-preload">
<div id="page-wrapper">
	<!-- Header -->
	<%@ include file="../layout/header2.jsp" %>
	<!-- Banner -->
	<section id="banner">
			<img alt="이미지" src="images/bookmain.png" width="100%" height="75%" style="object-fit: cover;">
	</section>
	<%@ include file="foot.jsp" %>
</div>
</body>
</html>