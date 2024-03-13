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
<%@ include file="../layout/header.jsp" %>


<div class="inputForm">
  ID : <input type="text" id="Username" disabled>
  영화 제목 : <input type="text" id="MoiveName" disabled>
  영화 시간 : <input type="text" id="MoiveName" disabled>
  <br/><br/>
  <button onclick="takeData()">좌석 고르기</button>
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
    <td><input type="checkbox" class="seats" value="A1"></td>
    <td><input type="checkbox" class="seats" value="A2"></td>
    <td><input type="checkbox" class="seats" value="A3"></td>
    <td><input type="checkbox" class="seats" value="A4"></td>
    <td><input type="checkbox" class="seats" value="A5"></td>
    <td class="seatGap"></td>
    <td><input type="checkbox" class="seats" value="A6"></td>
    <td><input type="checkbox" class="seats" value="A7"></td>
    <td><input type="checkbox" class="seats" value="A8"></td>
    <td><input type="checkbox" class="seats" value="A9"></td>
    <td><input type="checkbox" class="seats" value="A10"></td>
        <td class="seatGap"></td>
    
  </tr>
  
  <tr>
    <td>B</td>
    <td><input type="checkbox" class="seats" value="B1"></td>
    <td><input type="checkbox" class="seats" value="B2"></td>
    <td><input type="checkbox" class="seats" value="B3"></td>
    <td><input type="checkbox" class="seats" value="B4"></td>
    <td><input type="checkbox" class="seats" value="B5"></td>
    <td></td>
    <td><input type="checkbox" class="seats" value="B6"></td>
    <td><input type="checkbox" class="seats" value="B7"></td>
    <td><input type="checkbox" class="seats" value="B8"></td>
    <td><input type="checkbox" class="seats" value="B9"></td>
    <td><input type="checkbox" class="seats" value="B10"></td>
    <td class="seatGap"></td>
    
  </tr>
  
  <tr>
    <td>C</td>
    <td><input type="checkbox" class="seats" value="C1"></td>
    <td><input type="checkbox" class="seats" value="C2"></td>
    <td><input type="checkbox" class="seats" value="C3"></td>
    <td><input type="checkbox" class="seats" value="C4"></td>
    <td><input type="checkbox" class="seats" value="C5"></td>
    <td></td>
    <td><input type="checkbox" class="seats" value="C6"></td>
    <td><input type="checkbox" class="seats" value="C7"></td>
    <td><input type="checkbox" class="seats" value="C8"></td>
    <td><input type="checkbox" class="seats" value="C9"></td>
    <td><input type="checkbox" class="seats" value="C10"></td>
    <td class="seatGap"></td>
</tr>
  
<tr>
    <td>D</td>
    <td><input type="checkbox" class="seats" value="D1"></td>
    <td><input type="checkbox" class="seats" value="D2"></td>
    <td><input type="checkbox" class="seats" value="D3"></td>
    <td><input type="checkbox" class="seats" value="D4"></td>
    <td><input type="checkbox" class="seats" value="D5"></td>
    <td></td>
    <td><input type="checkbox" class="seats" value="D6"></td>
    <td><input type="checkbox" class="seats" value="D7"></td>
    <td><input type="checkbox" class="seats" value="D8"></td>
    <td><input type="checkbox" class="seats" value="D9"></td>
    <td><input type="checkbox" class="seats" value="D10"></td>
    <td class="seatGap"></td>
    
</tr>
  
<tr>
    <td>E</td>
    <td><input type="checkbox" class="seats" value="E1"></td>
    <td><input type="checkbox" class="seats" value="E2"></td>
    <td><input type="checkbox" class="seats" value="E3"></td>
    <td><input type="checkbox" class="seats" value="E4"></td>
    <td><input type="checkbox" class="seats" value="E5"></td>
    <td></td>
    <td><input type="checkbox" class="seats" value="E6"></td>
    <td><input type="checkbox" class="seats" value="E7"></td>
    <td><input type="checkbox" class="seats" value="E8"></td>
    <td><input type="checkbox" class="seats" value="E9"></td>
    <td><input type="checkbox" class="seats" value="E10"></td>
	<td class="seatGap"></td>
</tr>
  
<tr class="seatVGap"></tr>
  
<tr>
    <td>F</td>
    <td><input type="checkbox" class="seats" value="F1"></td>
    <td><input type="checkbox" class="seats" value="F2"></td>
    <td><input type="checkbox" class="seats" value="F3"></td>
    <td><input type="checkbox" class="seats" value="F4"></td>
    <td><input type="checkbox" class="seats" value="F5"></td>
    <td></td>
    <td><input type="checkbox" class="seats" value="F6"></td>
    <td><input type="checkbox" class="seats" value="F7"></td>
    <td><input type="checkbox" class="seats" value="F8"></td>
    <td><input type="checkbox" class="seats" value="F9"></td>
    <td><input type="checkbox" class="seats" value="F10"></td>
    <td class="seatGap"></td>
</tr>
  
<tr>
    <td>G</td>
    <td><input type="checkbox" class="seats" value="G1"></td>
    <td><input type="checkbox" class="seats" value="G2"></td>
    <td><input type="checkbox" class="seats" value="G3"></td>
    <td><input type="checkbox" class="seats" value="G4"></td>
    <td><input type="checkbox" class="seats" value="G5"></td>
    <td></td>
    <td><input type="checkbox" class="seats" value="G6"></td>
    <td><input type="checkbox" class="seats" value="G7"></td>
    <td><input type="checkbox" class="seats" value="G8"></td>
    <td><input type="checkbox" class="seats" value="G9"></td>
    <td><input type="checkbox" class="seats" value="G10"></td>
    <td class="seatGap"></td>
</tr>
  
<tr>
    <td>H</td>
    <td><input type="checkbox" class="seats" value="H1"></td>
    <td><input type="checkbox" class="seats" value="H2"></td>
    <td><input type="checkbox" class="seats" value="H3"></td>
    <td><input type="checkbox" class="seats" value="H4"></td>
    <td><input type="checkbox" class="seats" value="H5"></td>
    <td></td>
    <td><input type="checkbox" class="seats" value="H6"></td>
    <td><input type="checkbox" class="seats" value="H7"></td>
    <td><input type="checkbox" class="seats" value="H8"></td>
    <td><input type="checkbox" class="seats" value="H9"></td>
    <td><input type="checkbox" class="seats" value="H10"></td>
    <td class="seatGap"></td>
</tr>
  
<tr>
    <td>I</td>
    <td><input type="checkbox" class="seats" value="I1"></td>
    <td><input type="checkbox" class="seats" value="I2"></td>
    <td><input type="checkbox" class="seats" value="I3"></td>
    <td><input type="checkbox" class="seats" value="I4"></td>
    <td><input type="checkbox" class="seats" value="I5"></td>
    <td></td>
    <td><input type="checkbox" class="seats" value="I6"></td>
    <td><input type="checkbox" class="seats" value="I7"></td>
    <td><input type="checkbox" class="seats" value="I8"></td>
    <td><input type="checkbox" class="seats" value="I9"></td>
    <td><input type="checkbox" class="seats" value="I10"></td>
    <td class="seatGap"></td>
</tr>
  
<tr>
    <td>J</td>
    <td><input type="checkbox" class="seats" value="J1"></td>
    <td><input type="checkbox" class="seats" value="J2"></td>
    <td><input type="checkbox" class="seats" value="J3"></td>
    <td><input type="checkbox" class="seats" value="J4"></td>
    <td><input type="checkbox" class="seats" value="J5"></td>
    <td></td>
    <td><input type="checkbox" class="seats" value="J6"></td>
    <td><input type="checkbox" class="seats" value="J7"></td>
    <td><input type="checkbox" class="seats" value="J8"></td>
    <td><input type="checkbox" class="seats" value="J9"></td>
    <td><input type="checkbox" class="seats" value="J10"></td>
    <td class="seatGap"></td>
</tr>
  
 
</table>
  
<br/><button onclick="updateTextArea()">선택완료</button>
</div>
      
<script src="../assets/js/reserve.js"></script>
 
</body>
</html>