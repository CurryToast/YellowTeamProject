<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Movie List</title>
</head>
<body>
    <h1>Movie List</h1>
    <%-- 검색 결과 출력 --%>
<% List<Movie> movieList = (List<Movie>) request.getAttribute("list"); %>
<% if (movieList != null && !movieList.isEmpty()) { %>
    <table border="1">
        <thead>
            <tr>
                <th>영화 제목</th>
                <th>장르</th>
                <th>감독</th>
                <th>개봉일</th>
                <th>제작사 및 배급사</th>
                <th>상영시간</th>
                <th>줄거리</th>
                <th>평점</th>
                <th>국가</th>
                <th>배우</th>
            </tr>
        </thead>
        <tbody>
            <%-- 영화 목록이 있을 경우에만 반복하여 테이블에 출력합니다. --%>
            <c:forEach items="${list}" var="movie">
                <tr>
                    <td>${movie.mname}</td>
                    <td>${movie.genre}</td>
                    <td>${movie.director}</td>
                    <td>${movie.release_date}</td>
                    <td>${movie.producer}</td>
                    <td>${movie.running_time}</td>
                    <td>${movie.rating}</td>
                    <td>${movie.mgrade}</td>
                    <td>${movie.conutry}</td>
                    <td>${movie.mcast}</td>
                </tr>
            </c:forEach>
        </tbody>
    </table>
</body>
</html>
