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
<link rel="stylesheet" href="assets/css/main.css" />
<link rel="stylesheet" href="css/layout.css" />
</head>
<body class="is-preload">
	<%@ include file="./layout/header.jsp"%>
	<div id="page-wrapper">
		<div class="mycol-2" style="width: 600px;">
			<div class="login">
				<h2>예매 내역</h2>
				<c:if test="${sessionScope.user.isadmin = Y }">
				<form id="cont">
				<button>관리자 등록</button>
				<button class="join-btn  "type="button" onclick="drop()">관리자 탈퇴</button>
				</form>
				</c:if>
			</div>
		</div>
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