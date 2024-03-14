<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Movie Search</title>
</head>
<body>
    <h1>Movie Search</h1>
    
    <form action="movie/search" method="post" id="searchForm">
        <label for="keyword">Keyword:</label>
        <input type="text" id="keyword" name="keyword" required>
        <button type="submit">Search</button>
    </form>
    
    <div id="searchResult">
        <!-- 검색 결과가 여기에 동적으로 추가될 것입니다. -->
    </div>
    
    <script>
        // 검색 폼 제출 이벤트 핸들러
        document.getElementById('searchForm').addEventListener('submit', function(event) {
            event.preventDefault(); // 기본 제출 행동 방지
            var keyword = document.getElementById('keyword').value; // 검색어 가져오기
            searchMovies(keyword); // 검색 함수 호출
        });
        
        // 영화 검색 함수
        function searchMovies(keyword) {
            var xhr = new XMLHttpRequest(); // AJAX 요청 생성
            xhr.open('POST', 'movie/search', true); // POST 요청 설정
            xhr.setRequestHeader('Content-Type', 'application/json; charset=UTF-8'); // 요청 헤더 설정
            xhr.onload = function() { // 요청 완료 이벤트 핸들러
                if (xhr.status >= 200 && xhr.status < 300) { // 성공적으로 응답 받은 경우
                    var movies = JSON.parse(xhr.responseText); // JSON 형식의 응답을 객체로 변환
                    displayMovies(movies); // 검색 결과를 화면에 표시하는 함수 호출
                } else {
                    console.error('Request failed with status:', xhr.status); // 요청 실패 시 오류 메시지 출력
                }
            };
            xhr.send(JSON.stringify({ keyword: keyword })); // 요청 보내기 (검색어를 JSON 형식으로 전송)
        }
        
        // 영화 검색 결과를 화면에 표시하는 함수
        function displayMovies(movies) {
            var searchResultDiv = document.getElementById('searchResult'); // 검색 결과를 표시할 div 요소 가져오기
            searchResultDiv.innerHTML = ''; // 검색 결과 초기화
            
            if (movies.length === 0) { // 검색 결과가 없는 경우
                searchResultDiv.innerHTML = '<p>No results found.</p>'; // 결과 없음 메시지 표시
            } else { // 검색 결과가 있는 경우
                var table = '<table border="1">'; // 테이블 시작 태그
                table += '<tr><th>ID</th><th>Title</th><th>Director</th><th>Release Date</th></tr>'; // 테이블 헤더
                movies.forEach(function(movie) { // 각 영화에 대해 반복
                    table += '<tr>'; // 새로운 행 시작
                    table += '<td>' + movie.id + '</td>'; // 영화 ID 표시
                    table += '<td>' + movie.title + '</td>'; // 영화 제목 표시
                    table += '<td>' + movie.director + '</td>'; // 영화 감독 표시
                    table += '<td>' + movie.release_date + '</td>'; // 영화 개봉일 표시
                    table += '<td>' + movie.producer + '</td>';
                    table += '<td>' + movie.rating + '</td>';
                    table += '<td>' + movie.running_time + '</td>';
                    table += '<td>' + movie.synopsys + '</td>';
                    table += '<td>' + movie.mgrade + '</td>';
                    table += '<td>' + movie.country + '</td>';
                    table += '<td>' + movie.mcast + '</td>';
                    table += '<td>' + movie.poster + '</td>';
                    table += '</tr>'; // 행 닫기
                });
                table += '</table>'; // 테이블 닫기
                searchResultDiv.innerHTML = table; // 검색 결과를 화면에 표시
            }
        }
    </script>
</body>
</html>
