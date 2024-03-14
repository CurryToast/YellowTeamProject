<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="../assets/css/reserve.css" />
<title>스타 라이트 시네마</title>
</head>
<body>
<%@ include file="../layout/header2.jsp" %>



<form>
	<div class="inputForm">
	  ID : <input type="text" name="member_code" id="member_code" value="admin" >
	  영화 제목 : <input type="text" name="MoiveName" id="MoiveName" value="마더"  >
	  영화 시간 : <input type="text" name="schedule" id="schedule" value="2024-03-13">
	  <input type="number" id="movie_code" name="movie_code" value="100036"  >
	  <input type="text" id="theater" name="theater" value="2">
	  <br/><br/>
	  
	  
	  <!-- 이후 hidden
	 <input type="number" id="movie_code" name="movie_code" value="100036"  disabled>
	  <input type="text" id="theater" name="theater" value="2"  disabled>  -->
	  
	<!--   ID : <input type="text" id="Username" value ="${member.code}" disabled>
	  영화 제목 : <input type="text" id="MoiveName" value ="${movie.code}" disabled>
	  영화 시간 : <input type="text" id="MoiveName" value ="${movie.schedule}" disabled>
	  <br/><br/> -->
	
	</div>
	  
	<div class="seatStructure">
	<table id="seatsBlock">
	  <tr>
	    <td colspan="14"><div class="screen">SCREEN</div></td>
	    <td rowspan="20">
	      <div class="smallBox greenBox">선택 좌석</div> <br/>
	      <div class="smallBox redBox">예약된 좌석</div><br/>
	      <div class="smallBox emptyBox">빈좌석</div><br/>
	    </td>
	    
	  </tr>
	  
	  <tr>
	    <td></td>
	    <td>1</td>
	    <td>2</td>
	    <td>3</td>
	    <td>4</td>
	    <td>5</td>
	    <td></td>
	    <td>6</td>
	    <td>7</td>
	    <td>8</td>
	    <td>9</td>
	    <td>10</td>
	</tr>
	  
	<tr>
	    <td>A</td>
	    <td><input type="radio" class="seats" value="A1" name="seat"></td>
	    <td><input type="radio" class="seats" value="A2" name="seat"></td>
	    <td><input type="radio" class="seats" value="A3" name="seat"></td>
	    <td><input type="radio" class="seats" value="A4" name="seat"></td>
	    <td><input type="radio" class="seats" value="A5" name="seat"></td>
	    <td class="seatGap"></td>
	    <td><input type="radio" class="seats" value="A6" name="seat"></td>
	    <td><input type="radio" class="seats" value="A7" name="seat"></td>
	    <td><input type="radio" class="seats" value="A8" name="seat"></td>
	    <td><input type="radio" class="seats" value="A9" name="seat"></td>
	    <td><input type="radio" class="seats" value="A10" name="seat"></td>
	    <td class="seatGap"></td>
	    
	  </tr>
	  
	  <tr>
	    <td>B</td>
	    <td><input type="radio" class="seats" value="B1" name="seat"></td>
	    <td><input type="radio" class="seats" value="B2" name="seat"></td>
	    <td><input type="radio" class="seats" value="B3" name="seat"></td>
	    <td><input type="radio" class="seats" value="B4" name="seat"></td>
	    <td><input type="radio" class="seats" value="B5" name="seat"></td>
	    <td></td>
	    <td><input type="radio" class="seats" value="B6" name="seat"></td>
	    <td><input type="radio" class="seats" value="B7" name="seat"></td>
	    <td><input type="radio" class="seats" value="B8" name="seat"></td>
	    <td><input type="radio" class="seats" value="B9" name="seat"></td>
	    <td><input type="radio" class="seats" value="B10" name="seat"></td>
	    <td class="seatGap"></td>
	    
	  </tr>
	  
	  <tr>
	    <td>C</td>
	    <td><input type="radio" class="seats" value="C1" name="seat"></td>
	    <td><input type="radio" class="seats" value="C2" name="seat"></td>
	    <td><input type="radio" class="seats" value="C3" name="seat"></td>
	    <td><input type="radio" class="seats" value="C4" name="seat"></td>
	    <td><input type="radio" class="seats" value="C5" name="seat"></td>
	    <td></td>
	    <td><input type="radio" class="seats" value="C6" name="seat"></td>
	    <td><input type="radio" class="seats" value="C7" name="seat"></td>
	    <td><input type="radio" class="seats" value="C8" name="seat"></td>
	    <td><input type="radio" class="seats" value="C9" name="seat"></td>
	    <td><input type="radio" class="seats" value="C10" name="seat"></td>
	    <td class="seatGap"></td>
	</tr>
	  
	<tr>
	    <td>D</td>
	    <td><input type="radio" class="seats" value="D1" name="seat"></td>
	    <td><input type="radio" class="seats" value="D2" name="seat"></td>
	    <td><input type="radio" class="seats" value="D3" name="seat"></td>
	    <td><input type="radio" class="seats" value="D4" name="seat"></td>
	    <td><input type="radio" class="seats" value="D5" name="seat"></td>
	    <td></td>
	    <td><input type="radio" class="seats" value="D6" name="seat"></td>
	    <td><input type="radio" class="seats" value="D7" name="seat"></td>
	    <td><input type="radio" class="seats" value="D8" name="seat"></td>
	    <td><input type="radio" class="seats" value="D9" name="seat"></td>
	    <td><input type="radio" class="seats" value="D10" name="seat"></td>
	    <td class="seatGap"></td>
	    
	</tr>
	  
	<tr>
	    <td>E</td>
	    <td><input type="radio" class="seats" value="E1" name="seat"></td>
	    <td><input type="radio" class="seats" value="E2" name="seat"></td>
	    <td><input type="radio" class="seats" value="E3" name="seat"></td>
	    <td><input type="radio" class="seats" value="E4" name="seat"></td>
	    <td><input type="radio" class="seats" value="E5" name="seat"></td>
	    <td></td>
	    <td><input type="radio" class="seats" value="E6" name="seat"></td>
	    <td><input type="radio" class="seats" value="E7" name="seat"></td>
	    <td><input type="radio" class="seats" value="E8" name="seat"></td>
	    <td><input type="radio" class="seats" value="E9" name="seat"></td>
	    <td><input type="radio" class="seats" value="E10" name="seat"></td>
		<td class="seatGap"></td>
	</tr>
	  
	<tr class="seatVGap"></tr>
	  
	<tr>
	    <td>F</td>
	    <td><input type="radio" class="seats" value="F1" name="seat"></td>
	    <td><input type="radio" class="seats" value="F2" name="seat"></td>
	    <td><input type="radio" class="seats" value="F3" name="seat"></td>
	    <td><input type="radio" class="seats" value="F4" name="seat"></td>
	    <td><input type="radio" class="seats" value="F5" name="seat"></td>
	    <td></td>
	    <td><input type="radio" class="seats" value="F6" name="seat"></td>
	    <td><input type="radio" class="seats" value="F7" name="seat"></td>
	    <td><input type="radio" class="seats" value="F8" name="seat"></td>
	    <td><input type="radio" class="seats" value="F9" name="seat"></td>
	    <td><input type="radio" class="seats" value="F10" name="seat"></td>
	    <td class="seatGap"></td>
	</tr>
	  
	<tr>
	    <td>G</td>
	    <td><input type="radio" class="seats" value="G1" name="seat"></td>
	    <td><input type="radio" class="seats" value="G2" name="seat"></td>
	    <td><input type="radio" class="seats" value="G3" name="seat"></td>
	    <td><input type="radio" class="seats" value="G4" name="seat"></td>
	    <td><input type="radio" class="seats" value="G5" name="seat"></td>
	    <td></td>
	    <td><input type="radio" class="seats" value="G6" name="seat"></td>
	    <td><input type="radio" class="seats" value="G7" name="seat"></td>
	    <td><input type="radio" class="seats" value="G8" name="seat"></td>
	    <td><input type="radio" class="seats" value="G9" name="seat"></td>
	    <td><input type="radio" class="seats" value="G10" name="seat"></td>
	    <td class="seatGap"></td>
	</tr>
	  
	<tr>
	    <td>H</td>
	    <td><input type="radio" class="seats" value="H1" name="seat"></td>
	    <td><input type="radio" class="seats" value="H2" name="seat"></td>
	    <td><input type="radio" class="seats" value="H3" name="seat"></td>
	    <td><input type="radio" class="seats" value="H4" name="seat"></td>
	    <td><input type="radio" class="seats" value="H5" name="seat"></td>
	    <td></td>
	    <td><input type="radio" class="seats" value="H6" name="seat"></td>
	    <td><input type="radio" class="seats" value="H7" name="seat"></td>
	    <td><input type="radio" class="seats" value="H8" name="seat"></td>
	    <td><input type="radio" class="seats" value="H9" name="seat"></td>
	    <td><input type="radio" class="seats" value="H10" name="seat"></td>
	    <td class="seatGap"></td>
	</tr>
	  
	<tr>
	    <td>I</td>
	    <td><input type="radio" class="seats" value="I1" name="seat"></td>
	    <td><input type="radio" class="seats" value="I2" name="seat"></td>
	    <td><input type="radio" class="seats" value="I3" name="seat"></td>
	    <td><input type="radio" class="seats" value="I4" name="seat"></td>
	    <td><input type="radio" class="seats" value="I5" name="seat"></td>
	    <td></td>
	    <td><input type="radio" class="seats" value="I6" name="seat"></td>
	    <td><input type="radio" class="seats" value="I7" name="seat"></td>
	    <td><input type="radio" class="seats" value="I8" name="seat"></td>
	    <td><input type="radio" class="seats" value="I9" name="seat"></td>
	    <td><input type="radio" class="seats" value="I10" name="seat"></td>
	    <td class="seatGap"></td>
	</tr>
	  
	<tr>
	    <td>J</td>
	    <td><input type="radio" class="seats" value="J1" name="seat"></td>
	    <td><input type="radio" class="seats" value="J2" name="seat"></td>
	    <td><input type="radio" class="seats" value="J3" name="seat"></td>
	    <td><input type="radio" class="seats" value="J4" name="seat"></td>
	    <td><input type="radio" class="seats" value="J5" name="seat"></td>
	    <td></td>
	    <td><input type="radio" class="seats" value="J6" name="seat"></td>
	    <td><input type="radio" class="seats" value="J7" name="seat"></td>
	    <td><input type="radio" class="seats" value="J8" name="seat"></td>
	    <td><input type="radio" class="seats" value="J9" name="seat"></td>
	    <td><input type="radio" class="seats" value="J10" name="seat"></td>
	    <td class="seatGap"></td>
		<button id="complete" type="button">선택완료</button>
	</tr>
      
	</table>
	</div>
	</form>
<script src="../assets/js/reserve.js"></script>
 
</body>
</html>