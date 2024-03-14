<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet">
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"></script>
  <style type="text/css">
		  #myModal{
		  	display: block;
		  }
  </style>
</head>
<body>
<!-- The Modal -->
<div class="modal" id="myModal">
  <div class="modal-dialog modal-dialog-centered">
    <div class="modal-content" id="content">

      <!-- Modal Header -->
      <div class="modal-header">
        <h4 class="modal-title">회원 탈퇴</h4>
        <button type="button" class="btn-close" onclick="location.href='/YellowTeamProject'"></button>
      </div>

      <!-- Modal body -->
      <div class="modal-body">
        	<p>그동안 함께 해주셔서 감사합니다. 다음에 또 만나요.</p>
      </div>

      <!-- Modal footer -->
      <div class="modal-footer">
        <button type="button" class="btn btn-danger" onclick="location.href='/YellowTeamProject'">Close</button>
      </div>

    </div>
  </div>
</div>

</html>