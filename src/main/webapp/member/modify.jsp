<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<meta http-equiv="Cache-Control" content="no-cache, no-store, must-revalidate">
	<meta http-equiv="Pragma" content="no-cache">
	<meta http-equiv="Expires" content="0">
	<title>스타라이트 시네마</title>
	<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet">
	 <!--   <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"></script> -->
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
                            <input class="id-input" type="text" value="${sessionScope.user.userid }" disabled/>
                            <input name="userid" type="hidden" value="${sessionScope.user.userid }"/>
                        </li>
                        <!-- <li>비밀번호 <label>(영문 대/소문자, 특수문자를 포함 10-20자로 입력해주세요.)</label>-<label>사용가능 특수문자 : !@#$%^&* </label></li>
                        <li><input name="password" type="password" placeholder="비밀번호를 입력해 주세요."/></li>
                        <li>비밀번호 확인</li>
                        <li><input name="password2" type="password" placeholder="비밀번호를 다시 한번 입력해 주세요."/></li> -->
                        <li>이름</li>
                        <li><input id="name" name="name" type="text" value="${sessionScope.user.name}" disabled/></li>
                        
                        
                   
            </ul>
                    <div class="hidden">
                        <input id="adultYn" name="adultYn" type="hidden"/>
                        <input id="channel" name="channel" type="hidden"/>
                        
                    </div>
                    <button type="button" class="join-btn" onclick="modify()">저장</button>
                    <button class="join-btn drop "type="button" onclick="drop()">회원 탈퇴</button>
                </form>
            </div>
    <hr>
    <%@include file="../layout/footer.jsp" %>
</div>    
 <script type="text/javascript">
 	
 	
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
<!-- 계정 : minkr , 패스워드 : thGH123!@4 -->