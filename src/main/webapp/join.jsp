<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
<head>
<title>스타라이트 시네마 회원가입</title>
	<meta charset="UTF-8">
	 <meta name="viewport" content="width=device-width, initial-scale=1">
		<meta http-equiv="Cache-Control" content="no-cache, no-store, must-revalidate">
		<meta http-equiv="Pragma" content="no-cache">
		<meta http-equiv="Expires" content="0">
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet">
	<script>
	window.addEventListener('message',(e) => {
		console.log('-->',e.data);
		if (e && e.data){
			const res = JSON.parse(e.data);
			const data = res.data;
			if(res.successYn === 'Y'){
				$("#stage1").removeClass("active");
				$("#stage2").addClass("active");
				}else {
				alert(data.message);
				location.reload();
			}
			console.log(e);
		}
	},false)
	function certPhone(){
		const data = $('#formTerms').serializeObject();
		if(true && !data.terms06 ){
			alert("회원 통합 서비스에 동의해주세요.");
			return;
		}
		if(true && !data.terms05){
			alert("개인정보 수집 및 이용 동의에 동의해주세요.");
			return;
		}
		if(false && !data.terms07){
			alert("마케팅 정보 활용 동의해 동의해주세요.");
			return;		
		}
		var adultYn = $('input:radio[name="adultYn"]:checked').val();
		if(!adultYn) {
			alert("14세 이상/미만 여부를 확인해주세요.")
			return;
		}
		if(adultYn === 'N') {
			$("under14Popup").addClass("active");
		}else {
			window.open('auth/cert/sms?certType=JOIN&adultYn=Y','본인인증','top=10, left=10, width=500, height=600, status=no, menubar=no, toolbar=no, resizable=no')
		}
	}
		
		function certPhoneChild(){
			const checked = $("audltAgree").prop("checked");
			if(!checked) = {
					alert("보호자 개인정보 수집 및 이용에 동의해주세요.")
					return;
			}
			$('#under14Popup').removeClass('active');
			window.open('auth/cert/sms?certType=JOIN&adultYn=N', '본인 인증', 'top=10, left=10, width=500, height=600, status=no, menubar=no, toolbar=no, resizable=no')
		}
		
		var isChecked = false;
		
		function join() {
			const fav = document.querySelector('#favorites')
			fav.value = fav.value + ',' + document.querySelector('#etc').value
			const data = $('#form').serializeObject();
			var adultYn = $('input:radio[name="adultYn"]:checked').val();
			data.adultYn = adultYn;
			data.gender = $('input:radio[name="gender"]:checked').val();		
			console.log(data);
			
			if(data.username ==""){
				alert("아이디를 입력하세요.");
				return;
			}
			
			if(!isChecked){
				alert("아이디 중복확인을 해주세요.");
				return;
			}
			if(data.password == ""){
				alert("비밀번호를 입력하세요.");
				return;
			}
			if(data.password2 == ""){
				alert("비밀번호 확인을 입력하세요.");
				return;
			}
			if(data.password != data.password2){
				alert("비밀번호 확인이 일치하지 않습니다.");
				$('#password').focus();
				return;
			}
			if(data.email == ""){
				alert("이메일을 입력하세요.");
				return;
			}
			if(!data.birth){
			alert("생년월일을 입력하세요.")
			return;
			
			}
			if(!checkEmail(data.email)){
				alert("이메일 형식이 올바르지 않습니다.");
				return;
			}
			if(!checkPassword(data.password)){
				alert("비밀번호는 영문 대문자 또는 소문자, 특수문자를 포함 10-20자로 입력해주세요.");
				return;
			}
			if(!data.gender){
				alert("성별을 확인해주세요.")
				return;
			}
			if($("#adsSms").prop("checked")){
				data.smsAgree = 'Y';				
			}else{
				data.smsAgree = 'N';
			}
			if($("#adsKakao").prop("checked")){
				data.kakaoAgree = 'Y';
			}else{
				data.kakaoAgree = 'N';
			}
			if ($("#adsEmail").prop("checked")){
				data.emailAgree = 'Y';
			}else{
				data.emailAgree = 'N';
			}
			console.log('join',data);
			$.ajax({
				url		: './api/auth/join',
				data	: JSON.stringify(data),
				dataType  : 'text',
				type	  : 'post',
				contentType : 'application/json',
				success : function(res){
					alert(res);
					location.href = "./login";
				},
				error : function(xhr){
					console.log(xhr);
				}
				});
			}
		function checkId() {
			if($("#username").val() == ""){
				alert("아이디를 입력하세요.");
				$("#username").focus();
				return;
			}
			const data = $('#form').serializeObject();
			var idRule = /^[a-z]+[a-z0-9]{5,9}$/g;
			if(!idRule.test(data.username)){
				alert("아이디는 영문자로 시작하는 영문자 또는 숫자 6~10자로 입력해주세요.");
				$("#username").focus();
				return;
			}
			console.log('request data',data);
			$.ajax({
				url		: './api/auth/checkId',
				data	: data,
				dataType : 'json',
				type 	: 'post',
				success : function(res){
					if(!res.isExist){
						alert("사용 가능한 아이디입니다.");
						isChecked = true;
					}else {
						alert("이미 사용중인 아이디입니다.");
					}
					error : function(xhr,status,error){
						alert(xht.responseJSON.message);
					}
			});
		}
			function resetCheckId(){
				isChecked = false;
			}
			function ontermsChanged(e,must){
				if(must){
					return;
				}
				$("#adsSms").attr('chekced',e.checked);
				$("#adsKakao").attr('checked',e.checked);
				$("#adsEmail").attr('checked',e.checked);
				
				$("#adsSms").prop('chekced',e.checked);
				$("#adsKakao").prop('checked',e.checked);
				$("#adsEmail").prop('checked',e.checked);
				
				let msg = e.checked ? '수신에 동의하였습니다.' : '수신 동의를 해제하였습니다.';
				msg = "[회원동의] 마케팅 정보  " + msg + getYyyyMmDdMmSsToString(new Date());
				alert(msg);
				}
			function allChanged(e){
				$("input[name^='terms']").prop("chekced",e.checked);
				$("#adsSms").prop('checked',e.checked);
				$("#adsKakao").prop('checked',e.checked);
				$("#adsEmail").prop('checked',e.checked);
				
				let msg = e.checked ? '수신에 동의하였습니다. ' : '수신 동의를 해제하였습니다.';
				msg = "[회원동의] 마케팅 정보  " + msg + getYyyyMmDdMmSsToString(new Date());
		        alert(msg);
			}
			function marketingChanged(e, id) {
		        let msg = e.checked ? '수신에 동의하였습니다. ' : '수신 동의를 해제하였습니다. ';
		        let type = '';
		        if (id === "adsSms") {
		          msg = "[회원동의] SMS " + msg + getYyyyMmDdMmSsToString(new Date());
		          type = "SMS"
		        } else if (id === "adsKakao") {
		          msg = "[회원동의] 카카오 알림톡 " + msg + getYyyyMmDdMmSsToString(new Date());
		          type = "카카오톡 알림톡"
		        } else if (id === "adsEmail") {
		          msg = "[회원동의] 이메일 " + msg + getYyyyMmDdMmSsToString(new Date());
		          type = "E-mail"
		        }

		        alert(msg);
		}

		
	
	
	
	</script>
</head>
<body class = "is-preload">
	<%@include file="../layout/header-a.jsp"%>
	<div id="page-wrapper">
	<hr>
	<jsp:include page="joinagree.jsp"/>
	<hr>
	<%@include file="../layout/footer.jsp" %>
	</div>


</body>
</html>