<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>  
<!DOCTYPE HTML>
<!--
	Arcana by Pixelarity
	pixelarity.com | hello@pixelarity.com
	License: pixelarity.com/license
-->
<html>
	<head>
		<title>스타라이트 시네마</title>
		<meta charset="utf-8" />
		<meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=no" />
		<meta http-equiv="Cache-Control" content="no-cache, no-store, must-revalidate">
		<meta http-equiv="Pragma" content="no-cache">
		<meta http-equiv="Expires" content="0">
		<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet">
		<link rel="stylesheet" href="${pageContext.request.contextPath}/css/layout.css" />
	  <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/style.css" />  <!-- 회원가입 (temp.css 는 미사용)-->
	  <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/main.css" />
	  <link rel="stylesheet" href="${pageContext.request.contextPath}/css/join.css" />
	  <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/header.css" />
		<link rel="stylesheet" href="https://fonts.googleapis.com/css2?family=Material+Symbols+Outlined:opsz,wght,FILL,GRAD@20..48,100..700,0..1,-50..200" />
		<link rel="stylesheet" href="https://fonts.googleapis.com/css2?family=Material+Symbols+Outlined:opsz,wght,FILL,GRAD@20..48,100..700,0..1,-50..200" />
		<script src="https://kit.fontawesome.com/352c53403e.js" crossorigin="anonymous"></script>
	</head>
	<body class="is-preload">
	<%@include file="../layout/header.jsp" %>
	<div class ="snb">
	<div class = "inner">
	<div>
	<button class="join-btn  "type="button" onclick="location.href='member/reserve.jsp'">예매/취소내역</button><br>
	</div>
	<button class="join-btn  "type="button" onclick="location.href=''">지난관람내역</button><br><br>
	<button class="join-btn  "type="button" onclick="location.href='member/modify.jsp'">회원정보수정</button><br>
	</div>
	</div>	
	<div class="content">
	<div class="inner">
	<div class = "tabs1">
	<a href="javascript:void(0);" class="active")>"예매내역"</a>
	<a href="">취소내역</a>
	<hr>
	</div>
	<div class="mypage-pc">
	<div class="reser-desc1">
	"${user.name }님의 관람 가능 예매내역이"
	<strong class="blue">0</strong>
	"건 있습니다."
	</div>
	<div class="reser-desc2">
	"- 관람당일 매표소 및 무인발권기에서 예매번호로 티켓을 교환하세요."
	</div>
	<span class="material-symbols-outlined">
do_not_disturb_on
</span>
 <p>예매 내역이 없습니다.</p>
	</div>
	<h6 class="h6">예매하고 티켓 찾기</h6>
	<div class="description">
	<p>"- 예매 완료 시 생성되는&nbsp;"
	<span class="red2">예매번호로 매표소 및 무인 발권기</span>
	"에서 티켓을 수령할 수 있습니다."
	</p>
	<p>- 예고편 상영 등 극장 사정에 의해 영화시작이 10여분 차이 날 수 있습니다.</p>
	<p>* 청소년 관람불가 영화는 보호자를 동반해도 만 18세 미만 고객은 관람이 불가합니다. 상영관 입장시, 신분증을 지참하시기 바랍니다.</p>
	<p>* 일부 극장은 상영시작 이후 입장이 제한될 수 있으니, 반드시 상영시작 시간 내에 발권 후 입장해 주세요.</p>
	</div>
	<h6 class="h6">예매를 취소하고 싶을 때</h6>
	<div class="description">
	<p>- 예매 취소는 각 극장별 취소가능시간까지만 가능합니다.</p>
	<p>"- 고객센터 및 각 극장에 전화상으로 취소는 불가능하며 인터넷상에서 취소가 불가능한 경우 관람시간 전에 극장에 방문하시어 현장 취소하셔야 합니다."</p>
	<p>- 단, 극장에서 발권한 후에는 시간에 관계없이 인터넷상에서 취소는 불가하며 현장취소만 가능 합니다.</p>
	<p>- 예매완료 후에는 부분취소나 시간 변동을 할 수 없습니다. 예매내역 전체를 취소한 후 재예매를 하셔야 합니다.</p>
	<p>- 예매 취소 완료 여부는 반드시 취소내역에서 확인 하셔야 합니다.</p>
	</div>
	<h6 class="h6">극장 현장에서 취소 했을 때</h6>
	<div class="description">
	<p>- 극장 현장에서 취소하신 경우 취소 내역은 관람일 다음날 오전 중에 반영 됩니다.</p>
	<p>- 이 때 결제도 함께 취소되니 현장 취소시에 유의하시기 바랍니다.</p>
	</div>
	<h6 class="h6">환불규정</h6>
	<div class="description">
	<strong>온라인 영화 예매 후 취소가능시간 내에 취소하시면 전액 환불됩니다.</strong>
	<br>
	"1. 신용카드 : 결제일과 취소일이 다를 경우 영업일 기준 3~5일 소요됩니다."
	<br>
	"2. 네이버페이 : 네이버페이 포인트를 사용하신 경우 포인트로 재적립 됩니다."
	<br>
	" 카드결제를 한 경우 카드사 정책에 따라 승인 취소가 진행되며, 3일 이후 매입 취소 시 영업일 기준3~10일 소요됩니다."
	<br>
	" 3. 카카오페이 : 카카오페이머니를 사용하신 경우 카카오페이머니 잔액으로 원복 됩니다."
	<br>
	" 카드결제를 한 경우 카드사 정책에 따라 승인취소가 진행되며, 3일 이후 매입 취소 시 영업일 기준 3~10일 소요됩니다."
	<br> 
	" 4. 페이코 : PAYCO 포인트를 사용하신 경우 포인트로 재적립 됩니다."
	<br>
	" 카드결제를 한 경우 카드사 정책에 따라 승인취소가 진행되며, 3일 이후 매입 취소 시 영업일 기준 3~10일 소요됩니다."
	<br>
	<br>
	<span class="red2">
	"※ 예매내용을 변경할 때는, 취소가능시간 내에 취소하고 다시 예매해 주시기 바랍니다."
	<br>
	"※ 예매내역은 12개월 이내 예매하신 내역만 제공됩니다."
	</span>
	</div>
	<div class="cs-bottom">
	<div class="time">
	"평일 10:00 ~ 12:30, 13:30 ~ 18:00 / 주말 및 공휴일은 운영하지 않습니다."
	</div>
	</div>
	</div>
	<div class = "bg-layer" style="display: none;"></div>
	<div class="reservation-pc" id="modalReceipt" style="display:none;">
	<div class= "in-wrap">
	<div class="in-box">
	<div class="in" style="width:500px">
	<div class="head">
		<h4 class = "r-h4">온라인 매출전표</h4>
		<div class="right">
		<a href="#" class="btn-close"></a>
		</div>
	</div>
	<div class="body2"></div>
	<div class="layer-bottom-btns">
	<button type="button" class="btn-type2 btn-close">
	<strong>닫기</strong>
	</button>
	<button type="button" class="btn-type- btnPrint">
	<strong>출력</strong>
	</button>
	</div>
	</div>
	</div>
	</div>
	</div>
	<div class="reservation-pc" id="modalApproval" style="display: none;">
	<div class="in-wrap">
	<div class="in-box">
	<div class="in" style="width:500px">
	<div class="head">
		<h4 class="r-h4">현금영수증 발행</h4>
		<div class="right">
		<a href="#" class="btn-close"></a>
		</div>
	</div>
	<div class="body2">
	<div class="cash-print">
	<div class="t1">현금영수증을 즉시 발행 하시겠습니까?</div>
	<div class="tit">구분</div>
	<div class="labels">
	<label>
	<input type="radio" name="Installment" class="radio installment" value="00" checked>
	<em></em>
	<span>소비자</span>
	</label>
	<label>
	<input type="radio" name="Installment" class="radio installment" value="01">
	<em></em>
	<span>사업자</span>
	</label>
	</div>
	<div class="tit">금액</div>
	<div class="price">0원</div>
	<div class="tit">번호입력</div>
	<input type="text" id="CardNo" name="CardNo" class="inp line=type"
	placeholder="현금영수증을 발행할 휴대폰 또는 카드번호를 입력하세요.">
    <div class="t2">
    "확인 버튼을 클릭하지 않고 창을 닫으시면, 자진발급 처리되며,"
    <br>
    "자진발급은 영화 상영일 이후 홈텍스에서 조회 가능합니다."
    </div>
	</div>
	<div class="layer-bottom-btns">
	<button class="btn-type2 btn-close">
	<strong>취소</strong>
	</button>
	<button class="btn-type0 btnApproval">
	<strong>확인</strong>
	</button>
	</div>
	</div>
	</div>
	</div>
	</div>
	</div>
	</div>
	<div class="modal" id="modalPrint">
	<div class="modal-dialog" style="max-width:480px">
	<div class="modal-content">
	<div class="modal-header">
		<h4>예매내역 출력</h4>
		<button type="button" class="close-modal" data-dismiss="modal">닫기</button>
	</div>
	<div class="modal-body"></div>
	<div class="modal-bottom flex">
	<button type="button" class="btn-modal11" data-dismiss="modal">닫기</button>
	<button type="button" class="btn-modal12 btnPrint">출력하기</button>	
	</div>
	</div>
	</div>
	</div>
	<div class="modal" id="refund">
	<div class="modal-dialog" style="max-width:350px">
	<div class="modal-content">
	<div class="modal-header">
	<h4>예매취소</h4>
	<button type="button" class="close-modal" data-dismiss="modal">닫기</button>
	</div>
	<div class="modal-body">
	<div class="modal-txt mb35">예매를 취소 하시겠습니까?</div>
	<div class="modal-bottom flex">
	<button type="button" class="btn-modal11" data-dismiss="modal">취소</button>
	<button type="button" class="btn-modal12 btnRefund">확인</button>
	</div>
	</div>
	</div>
	</div>
	</div>
	<script type="text/javascript">
		$(function(){
			$(".btn-print").on("click",function(){
				var tn = fnParseStr($(this).data("tn"));

			if(tn == "")
				return;
		$.ajax({
			url: "",
			type:"POST",
			data:{
				cgid: sessionStorage.getItem("cgid"),
				ssid: sessionStorage.getItem("ssid"),
				tokn: sessionStorage.getItem("tokn"),
				print: "empty",
				KindCd:"Now",
				TransNo: tn
			},
			success: function(rst){
				$("#modalPrint.modal-body").html(rst);
				$("#modalPrint.btnPrint").data("tn",tn);
				$("#modalPrint").modal();
			},
			error: function (xhr){
				mAlert("오류가 발생했습니다.");
			}
			});
		});	
		$("modalPrint .btnPrint").on("click",function(){
			$("#modalPrint").modal({show:0});
			var tn = fnParseStr($(this).data("tn"));
			
			if(tn == "")
				return;
			
			var newWin = window.open("" + sessionStorage.getItem("cgid")
			+ "&ssid=" + sessionStorage.getItem("ssid") + "&tokn=" +
			sessionStorage.getItem("tokn") + "&TransNo=" + tn, "_blank");
			if (newWin == null || newWin == undefined){
				mAlert("팝업이 차단되었습니다.<br> 차단된 팝업을 허용해 주세요.");	
			}
			});
		$("#modalReceipt .btn-close").on("click",function(){
			$(".bg-layer").fadeOut(300);
			$("#modalReceipt").fadeOut(300);
		});
		$(".btn-receipt").on("click",function(){
			var guid = fnParseStr($(this).data("id"));
			var type = fnParseStr($(this).data("type"));
			
			if(guid == "")
				return;
			
			$.ajax({
			url:""
			type: "POST",
			data: {
				cgid: sessionStorage.getItem("cgid"),
				ssid: sessionStorage.getItem("ssid"),
				tokn: sessionStorage.getItem("tokn"),
				print: "empty",
				ReceiptGuID: guid.
				ReceiptType: type,
				Gubun: "approval"				
			},
			success: function (rst){
				$("#modalReceipt .body2").html(rst);
				$("#modalReceipt .btnPrint").data("id",guid);
				$("#modalReceipt .btnPrint").data("type",type);
				$('#modalReceipt').fadeIn(300);
				$('.bg-layer').fadeIn(300);
			},
			error: function (xhr){
				mAlert("오류가 발생했습니다.");
			}
			});	
		});
		$("modalReceipt .btnPrint").on("click",function(){
			$('#modalReceipt').fadeIn(300);
			$('.bg-layer').fadeIn(300);
			var guid = fnParseStr($(this).data("id"));
			var type = fnParseStr($(this).data("type"));
		
			if (guid == "")
				return;
			
			var newWin = window.open("" + sessionStorage.getItem("cgid") + "&ssid=" + sessionStorage.getItem("ssid")
					+ sessionStorage.getItem("tokn") + "&ReceiptGuID=" + guid + "&ReceiptType=" + type
					+ "&Gubun=approval", "_blank");
				if (newWin == null || newWin == undefined){
					mAlert("팝업이 차단되었습니다.<br>차단된 팝업을 허용해 주세요");	
				}
		});
		
			$("#modalApproval .btn-close").on("click", function(){
				$(".bg-layer").fadeOut(300);
				$("#modalApproval").fadeOut(300);	
			});
			$(".btn-approval").on("click", function(){
			$("#modalApproval .btnApproval").data("cn", $(this).data("cn"));	
			$("#modalApproval .btnApproval").data("sn", $(this).data("sn"));	
			$("#modalApproval .btnApproval").data("tn", $(this).data("tn"));	
			$("#modalApproval .btnApproval").data("cd", $(this).data("cd"));	
			$("#modalApproval .btnApproval").data("sd", $(this).data("sd"));	
			$("#modalApproval .btnApproval").data("pd", $(this).data("pd"));	
			$("#modalApproval .btnApproval").data("ss", $(this).data("ss"));	
			$("#modalApproval .btnApproval").data("ra", $(this).data("ra"));	
			
			$(".installment").eq(0).prop("checked", true);
			$("#modalApproval .price").text($.number($(this).data("ra"))+"원");
			$("#modalApproval").fadeIn(300);
			$(".bg-layer").fadeOut(300);
			});
			$(".btnApproval").on("click",function(){
				var cn = $(this).data("cn");
				var sn = $(this).data("sn");
				var tn = $(this).data("tn");
				var cd = $(this).data("cd");
				var sd = $(this).data("sd");
				var pd = $(this).data("pd");
				var ss = $(this).data("ss");
				var ra = $(this).data("ra");
				
				if ($("#CardNo").val().replace(/[^0-9]/g,"") ==""){
					oAlert("현금영수증을 발행할 휴대폰 또는 카드번호를 입력하세요".,
			"$('#CardNo').focus();");
					return false;
				}
				
				$.ajax({
				   url: "",
				   type:"POST",
				   data:{
					cgid: sessionStorage.getItem("cgid"),
					ssid: sessionStorage.getItem("ssid"),
					tokn: sessionStorage.getItem("tokn"),
				   Installment: $(".installment:checked").val(),
				   CardNo: $("#CardNo").val().replace(/[^0-9]/g,""),
				   CartNo: cn,
				   SplitNo: sn,
				   TransNo: tn,
				   CinemaCd: cd,
				   ScreenStoreCd: sd,
				   PlaySDT: pd,
				   ShowSeq: ss,
				   TotalAmt: fnParseInt(ra)
				   },
				   success: function (rst){
					   if (rst.RetCode == "success"){
						   oAlert("현금영수증이 정상적으로 발행되었습니다.",
				"window.location.reload();");
						   
					   }else{
						   oAlert(rest.RetMsg;)
					   }
				   },
				   error: function (xhr){
					   oAlert("오류가 발생했습니다.");
				   }
				   });
				});
				$(".btnCancel").on("click",function(e){
					var tn = fnParseStr($(this).data("tn"));
					
					if(tn =="")
						return;
					
					$.ajax({
						url: "",
						type: "POST",
						data: {
							cgid: sessionStorage.getItem("cgid"),
							ssid: sessionStorage.getItem("ssid"),
							tokn: sessionStorage.getItem("tokn"),
							TransNo: tn
						},
						success: function (rst){
							if (rst.RetCode == "success"){
								$("#refund").modal({show:0});
								mAlert("예매내역이 취소되었습니다.","window.location.reload();");
							}else {
								$("#refund").modal({show:0});
								mAlert(rst.RegMsg);
							}
						},
						error: function (xhr) {
							$("#refund").modal({show:0});
							mAlert("오류가 발생했습니다.");
							
						}
					});
				});			
				});
			
				function fnPageList(page) {
					var nform = $('<form/>',{method: "post", action: "", target: "_self"});
					nform.append($('<input/'>,{type: 'hidden', name: 'cgid', value:
						sessionStorage.getItem("cgid")}));
					nform.append($('<input/'>,{type: 'hidden', name: 'ssid', value:
						sessionStorage.getItem("ssid")}));
					nform.append($('<input/'>,{type: 'hidden', name: 'tokn', value:
						sessionStorage.getItem("tokn")}));
					nform.append($('<input/'>,{type: 'hidden', name: 'page', value: page}));
						nform.appendTo("body");
						nform.submit();
				}
	</script>
	<div data-num="1" id="datanum"></div>
	<!-- Scripts -->
			<script src="assets/js/jquery.min.js"></script>
			<script src="assets/js/jquery.dropotron.min.js"></script>
			<script src="assets/js/browser.min.js"></script>
			<script src="assets/js/breakpoints.min.js"></script>
			<script src="assets/js/util.js"></script>
			<script src="assets/js/main.js"></script>
			<script src="js/nav.js"></script>
	</body>
</html>