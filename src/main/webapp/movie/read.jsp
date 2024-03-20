<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<!DOCTYPE html>
<html>
<head>
	<title>커피24 북카페</title>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
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
	<link rel="stylesheet" href="../assets/css/search.css" />
<!-- 	  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet"> -->
</head>
<body class="is-preload">
<div id="page-wrapper">
	<%@include file="../layout/header.jsp" %>
	<section id="read" >
	<!-- <hr style="color:white;"> -->
	<div id=imgbox>
	<div id=ima_size>
	<img src="https://yellows3.s3.ap-northeast-2.amazonaws.com/share/poster/${bo.poster }.jpg" >
	</div>
	
	<div id=box>
		<!-- <div id=box_sizing> -->
	<h1><c:out value="${bo.mname}"/>
	</h1>
	
	관람등급
	<h5><c:out value="${bo.rating}"/>세 이용가</h5>
	개봉일
	<h5><c:out value="${bo.release_date }"/></h5>
	장르 
	<h5><c:out value="${bo.genre}"/></h5>	
	<div id=box2>
	<br>
	상영 시간
	<h5><c:out value="${bo.running_time}"/>분</h5>
	감독
	<h5><c:out value="${bo.director}"/></h5>	
	제작사 및 배급사
	<h5><c:out value="${bo.producer}"/></h5>	
	</div>
	</div>
	<div id=box3>
	평점
	<h5><c:out value="${bo.mgrade}"/></h5>	
	제작 국가
	<h5><c:out value="${bo.country}"/></h5>	
	출연
	<h5><c:out value="${bo.mcast}"/></h5>	
	</div>
<!-- 	</div> -->
	<div id=synop_but>
	줄거리
	<h5 id=synopsys><c:out value="${bo.synopsys}"/></h5>	
	
	
	<!--  -->
	<!-- 후기 등록 -->
	<form action="comments" method="post">
	<!-- 필요한 파라미터.화면에는 표시안함. -->
	<input type="hidden" name="mcode" value="${cmt.mcode }">  <!-- 후기 추가할 영화의 코드(후기테이블 mref.고정값)  -->
	<input type="hidden" name="score" value="${cmt.score }">  <!-- 현재페이지 번호 전달 - 순서8) -->
	<input type="hidden" name="writer" class="input" value="${cmt.writer }">
	<!-- 구현 완료 : 로그인한 사용자가 작성할때는 로그인 이메일,닉네임 가져와서 표시 -->			
		<ul>
			<%-- <li>${user.userid }</li> --%>
			<li>
				<ul style="display: flex;flex-direction: column;">
					<li>
						<textarea rows="5" cols="90" name="content" 
						style="resize:none;margin-right:20px;" 
						placeholder="로그인 후에 후기를 작성하세요." class="input"></textarea>
					</li>				
					<li style="align-self: center;margin-bottom: 20px;">
<!-- 저장버튼 테스트를 위해 변경 --><c:if test="${sessionScope.user != null }">  <!-- 구현 완료 : 로그인 했을때 -->
								<button type="button" onclick="executeCmt('1',0)">저장</button>  <!-- 2번째 인자 0은 의미없음. -->
							</c:if>	
							<c:if test="${sessionScope.user == null }">		<!-- 구현 완료  : 로그인 안했들때 -->
								<button type="button" onclick="login()">로그인</button>
							</c:if>
					</li>
				</ul>
			</li>
			<li>
					<span>후기</span>
					<span>[<c:out value="${cmt.Count }" />]</span> <!-- 후기갯수 -->
				<hr>
			</li>
			
			<!-- 후기 목록 -->
			<c:forEach var="cmt" items="${cmtlist}">
			<li>
				<ul class="crow">
					<li><c:out value="${cmt.writer }" /></li>				
					<li><c:out value="${cmt.ip }" /></li>				
					<li><c:out value="${cmt.createdAt }" /></li>	
				<c:if test="${user.userid==cmt.writer }">  <!-- session 에 저장된 user애트리뷰트의 id와 작성자의 id 가 같은면 보이기 -->		
					<li><a href="javascript:executeCmt('2','${cmt.idx }')">삭제</a></li>				
				</c:if>	
				</ul>
			</li>
			<li>
				<textarea class="cmtcontent"
						  style="border: none;resize: none;"
				><c:out value="${cmt.content }" /></textarea>
			</li>
			</c:forEach>
		</ul>	
	</form>
	<div id=buttons>
		<a class="button" href="search?page=${page }">목록</a> 
		<a class="reverse_button" href="reserve">예매</a>	
	</div>
</section>	
<div data-num="5" id="datanum"></div>
	
	</div>



<script type="text/javascript">
	const user = '${member.code}'
	const txtarea = document.querySelector('textarea[name="content"]')
	if(user.length !=0)
		txtarea.placeholder = user + '님 후기를 작성하세요.'

	//후기 등록과 삭제 모두 post 방식으로 합니다.
	function executeCmt(fval,cidx){	/* 후기 작성추가 와 삭제는 매개변수 f의 값으로 구별한다. idx는 매개변수는 삭제할 후기번호 */
		console.log(fval)
		document.forms[0].f.value=fval
		if(fval==='2') {		//후기 삭제
			document.forms[0].idx.value=cidx		/* hidden 타입 idx의 value 로 설정*/
			const yn = confirm('후기 삭제하시겠습니까?')
			if(yn)	document.forms[0].submit()	
		}else if(fval==='1'){			//후기 등록
			document.forms[0].submit()			
		}
	}
	
	function reset_content() {
		document.forms[0].content.value=''
	}
	
	function login() {
		sessionStorage.setItem('back', location.href);		//location.href 는 현재의 요청 url 읽어옵니다.
		location.href='../login'  // 로그인 후 글쓰기 url로 redirect 하기 위한 파라미터
	}
	
	var back = sessionStorage.getItem('back');
	if(back) {
		location.href=back;
		sessionStorage.removeItem('back');
	}
	
	
	
		
<!-- <textarea rows="20" disabled="disabled" 
style="background-color:#f3f3f3;font-size:inherit;resize: none;border:none;"> -->

<!-- </textarea> -->
		
	
	<!-- 메인글 출력 끝 -->
</section>	
<!-- <div data-num="5" id="datanum"></div> -->
</div>
<!-- <script src="../js/nav.js"></script> -->

			
</body>
</html>