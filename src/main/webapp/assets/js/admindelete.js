document.querySelector('#delete').addEventListener('click', function () {
    const code = prompt('삭제할 관리자 코드를 입력하세요');
    console.log('삭제 관리자 코드: ', code);

    // DELETE 요청을 서버로 보내는 부분
    const xhr = new XMLHttpRequest();
    xhr.open('DELETE', '/api/admin?code=' + code);
    xhr.setRequestHeader('Content-Type', 'application/json;charset=UTF-8'); // Content-Type 설정
    xhr.send();
    xhr.onload = function () {
        if (xhr.status === 200 || xhr.status === 201) { 
            console.log("DELETE 응답 :", xhr.response);
            const resultObj = JSON.parse(xhr.response);
            if (resultObj.result == 1) {
                alert('관리자 삭제가 완료되었습니다.');
                clear();
                modal.hide();
            }else if (resultObj.result == null || resultObj.result == ''){
				alerf('관리자 코드를 입력해주세요.');
			}
             else {
                alert('관리자 삭제 오류입니다. code를 확인하세요');
            }
        } else { 
            console.error('오류1-', xhr.response);
            console.error('오류2-', xhr.status);
        }
    };
});