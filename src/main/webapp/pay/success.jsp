<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>  
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>  
<!DOCTYPE HTML>
<html>
	<head>
		<title>스타라이트 시네마</title>
		<meta charset="utf-8" />
		<meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=no" />
		<link rel="stylesheet" href="../assets/css/main.css" />
		<link rel="stylesheet" href="../css/layout.css" />
		<link rel="stylesheet" href="../assets/css/myPage.css" />
	</head>
	<body class="is-preload">
		<div id="page-wrapper">

			<%@ include file="../layout/header.jsp" %>

			<!-- Main -->
				<section class="wrapper style1">
					<div class="container">
						<div class="row gtr-200">
							<div class="col-3 col-12-narrower">
								<div id="sidebar1">
								</div>
							</div>
							<div class="col-6 col-12-narrower imp-narrower">
								<div id="content">

									<!-- Content -->

										<article>
											<header>
												<h3 id="result">결제 내역</h3>
											</header>
											<div  class="info">
											<c:forEach var="ele" items="${reserveList}">
												<p><c:out value="${ele.mname}"/></p>
												<img src="https://yellows3.s3.ap-northeast-2.amazonaws.com/share/poster/${ele.poster }.jpg" alt="${ele.mname }">
												
												<p><strong>결제번호 </strong><span id="orderId"></span></p>
												<p>
												<p><strong>총 결제금액</strong><span id="amount"></span></p>
												<br>
												결제카드 : <span id="cardtype"></span> <span id="method"></span> (<span id="cardno"></span>)<br> 
												승인날짜 : <span class="title" id="paydate"></span>
											</c:forEach>
											</div>
											<div class="paybtn">
												<a class="btn btn-primary ok" href="/YellowTeamProject">홈</a>&nbsp;&nbsp;&nbsp;
											</div>
										</article>

								</div>
							</div>
							<div class="col-3 col-12-narrower">
								<div id="sidebar2">

								</div>
							</div>
						</div>
					</div>
				</section>

				<%@ include file="../layout/footer.jsp" %>
				<div data-num="3" id="datanum"></div>
		</div>

		<!-- Scripts -->
			<script src="../assets/js/jquery.min.js"></script>
			<script src="../assets/js/jquery.dropotron.min.js"></script>
			<script src="../assets/js/browser.min.js"></script>
			<script src="../assets/js/breakpoints.min.js"></script>
			<script src="../assets/js/util.js"></script>
			<script src="../assets/js/main.js"></script>
			<script src="../js/nav.js"></script>
			<!-- 비동기 http 통신 axios api-->
			<script src="https://cdn.jsdelivr.net/npm/axios/dist/axios.min.js"></script>
		<script type="text/javascript">
		const responseData='${payment}'
		const payment = JSON.parse(responseData)
		const id = '${member_code}'
		console.dir(payment)
		console.log(id)
		async function requestPaymentSave(payReq){
			const result = await axios.post('../api/pay',payReq)
			console.log(result)
			return result.data
		}
		
		const payReq = {orderid: payment.orderId , 
						amount: payment.totalAmount, 
						id: '${member_code}', 
						paydate:payment.approvedAt ,
						paytype : payment.card.cardType + ' ' + payment.method, 
						paymentkey:payment.paymentKey }
		
		requestPaymentSave(payReq)
		.then(result => {
			document.querySelector('#result').innerHTML = result
			document.querySelector('#orderId').innerHTML = payment.orderId
			document.querySelector('#orderName').innerHTML = payment.orderName
			document.querySelector('#cardtype').innerHTML = payment.card.cardType
			document.querySelector('#method').innerHTML = payment.method
			document.querySelector('#cardno').innerHTML = payment.card.number
			document.querySelector('#paydate').innerHTML = payment.approvedAt
			document.querySelector('#amount').innerHTML = payment.totalAmount.toLocaleString() + '원'
		})
		.catch(e=> {
			console.error(e.response)
			location.href='../invalid.html'
		})
		
		
	</script>
	</body>
</html>