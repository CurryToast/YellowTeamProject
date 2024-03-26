<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
	<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
	<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
	<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8">
<title>스타 라이트 시네마</title>
<link rel="stylesheet" href="../assets/css/detail.css"/>
</head>
<body>
<%@ include file="../layout/header.jsp" %>
<hr>
<div id = "movieList">
<c:choose>
    <c:when test="${empty movie}">
        <p>해당하는 영화 정보가 없습니다.</p>
    </c:when>
</c:choose>
   
        <div style = "display: flex; justify-content: center; margin-bottom: 30px;">
            <img src="https://yellows3.s3.ap-northeast-2.amazonaws.com/share/poster/${movie.poster}.jpg" alt="${movie.mname}">
        <div style = "text-align: center; margin-left:20px;">
            <h2 style="margin-top: 30px;">${movie.mname}</h2>
            <p id = "detail" class ="${color }">${movie.rating }세 이상 관람가</p>
            <p>${ movie.release_date} 개봉 | ${date.schedule } 상영</p>
            <p>상영 시간: ${ movie.running_time}분</p>
            <p>평점 | ★ ${ movie.mgrade} / 10.0 </p>
            <p>장르: ${movie.genre }</p>
        </div>
     </div>
            <a href="list"
            			 id = "reservebtn" class="btn-design">목록</a>
            			 &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
		        <button class="btn-design" onclick="reserve()">예매하기</button>
            <hr>
            <a href="#" onclick = "showSynopsys()">줄거리</a> 
            <a href="#" onclick = "showInfo()">주요 정보</a>
            </div>
            
            <div id="synopsys" style="display:block;">
			    ${movie.synopsys}
			</div>
			
			<div id="info" style="display:none;">
			 <div> ㆍ ${movie.country }</div>
			 <div> ㆍ 감독: ${movie.director} </div> 
			 <div> ㆍ 제작사/배급사: ${movie.producer } </div>
			 <div> ㆍ 출연진: ${movie.mcast } </div>
			</div>
<input type="hidden" name="mcode" id="mcode" value="${movie.mcode}">
<input type="hidden" name="age" id="age" value="${member_age}">
<input type="hidden" name="rating" id="rating" value="${movie.rating}">
<script type="text/javascript">
	function reserve() {
		const mcode= document.querySelector("#mcode").value;
		const age= document.querySelector("#age").value;
		const rating= document.querySelector("#rating").value;
		
		let yn
		if('${member_code}'==''){
			yn=confirm('예매는 로그인이 필요합니다. 로그인 하시겠습니까?')
			if(yn) {
				location.href='/YellowTeamProject/login'
			}
		} else {
			if(age<rating){
				alert('관람 연령이 부적합합니다.')
			} else {
				location.href='/YellowTeamProject/movie/reserve?movie_code='+mcode
			}
		}
	}
</script>
		<script src="../assets/js/show.js"></script>
		<script type="text/javascript">
			const color = '${color}'
			console.log(color)
		</script>
</body>
</html>
