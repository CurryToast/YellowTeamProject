<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta http-equiv="Cache-Control" content="no-cache, no-store, must-revalidate">
<meta http-equiv="Pragma" content="no-cache">
<meta http-equiv="Expires" content="0">
<title></title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet">
<link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/header.css" />
<link rel="stylesheet" href="../css/layout.css" />
<link rel="stylesheet" href="../assets/css/style.css" />  <!-- 회원가입 (temp.css 는 미사용)-->
<link rel="stylesheet" href="../assets/css/main.css" />
<link rel="stylesheet" href="../css/join.css" /> 
<style type="text/css">
  	.change{
  		background-color: bisque !important;
  	}
  	button.drop{
  		font-size:0.85em;
  		border:none;
  		background-color: transparent;
  		color: gray;
  	}
  </style>
</head>
<body class="is-preload">
	<%@include file="../layout/header.jsp" %>
	<div id="page-wrapper">
    <hr>
  	<div class="cont">
                <form id="form">
                    <ul class="join-wrap">
                        <li>아이디</li>
                        <li>
                            <input class="id-input" type="text" value="${sessionScope.user.code }" disabled/>
                            <input name="userid" type="hidden" value="${sessionScope.user.code }"/>
                        </li>
                        <li>이름</li>
                        <li><input id="name" name="name" type="text" value="${sessionScope.user.name}" disabled/></li>
                        <li>나이</li>
                        <li id="birthChk"><input id="birth" name="birth" type="text" value="${sessionScope.user.age }" disabled /></li>
                    </ul>
                    <button class="join-btn  "type="button" onclick="drop()">회원 탈퇴</button>
                </form>
            </div>
    <hr>
</div>    
 <script type="text/javascript">
		
	function modify() {
       favorites.value =favorites.value + "," +etc.value
        const data = $('#form').serializeObject();
        console.log('modify',data);
        $.ajax({
          url        : '../api/modify',
          data       : JSON.stringify(data),
          dataType       : 'text',
          type       : 'post',
         contentType: 'application/json', 
          success : function(res){
            alert(res);
            location.href = "modify";
          },
          error : function(xhr){
            console.log(xhr);
          }
        });
      }

      function drop() {
    	  const res = prompt('회원 탈퇴를 하시겠습니까? \'회원탈퇴\' 라고 입력해주세요.')
    	  if(res==='회원탈퇴')
    		  location.href='drop'
    	  else
    		  alert('입력하신 글자를 다시 확인하세요.')
      }
     
 </script>
<!-- Scripts -->
			<script src="../assets/js/jquery.min.js"></script>
			<script src="../assets/js/jquery.dropotron.min.js"></script>
			<script src="../assets/js/browser.min.js"></script>
			<script src="../assets/js/breakpoints.min.js"></script>
			<script src="../assets/js/swipper.min.js"></script>
			<script src="../assets/js/util.js"></script>
			<script src="../assets/js/main.js"></script>
			<script src="../assets/js/map.daum.js"></script>
			<script src="../assets/js/script.js"></script>
</body>
</html>
