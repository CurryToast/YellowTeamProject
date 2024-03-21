// 관리자 권한 박탈
document.querySelector('#demotion').addEventListener('click', function (){
   const code = prompt('권한을 해지할 관리자 코드를 입력하세요');
   if(!code){
      alert('코드를 입력하세요.');
      return;
   }
   const xhr = new XMLHttpRequest();
    xhr.open('POST', '../api/demotion?code=' + encodeURIComponent(code)); 
    xhr.setRequestHeader('Content-Type', 'application/json;charset=UTF-8'); 
    xhr.onload = function () {
        if (xhr.status === 200 || xhr.status === 201) { 
            console.log("POST 응답 :", xhr.response);
            const resultObj = JSON.parse(xhr.response);
            if (resultObj.result === 1) {
                alert('관리자 권한 해제가 완료되었습니다.');
            } else {
                alert('존재하지 않는 관리자입니다. 코드를 확인하세요');
            }
        } else {
            console.error('오류1-', xhr.response);
            console.error('오류2-', xhr.status);
            alert('서버 오류 발생');
        }
    };
    xhr.send();
});
// 관리자 삭제
document.querySelector('#delete').addEventListener('click', function () {
    const code = prompt('삭제할 관리자 코드를 입력하세요');
    console.log('삭제 관리자 코드: ', code);
    if (!code) {
        alert('코드를 입력하세요.');
        return;
    }
    const confirmDelete = confirm('정말로 관리자를 삭제하시겠습니까?');
    if (!confirmDelete) {
        alert('취소되었습니다.');
        return;
    }
       const xhr = new XMLHttpRequest();
    xhr.open('DELETE', '../api/admin?code=' + encodeURIComponent(code)); 
    xhr.setRequestHeader('Content-Type', 'application/json;charset=UTF-8'); 
    xhr.onload = function () {
        if (xhr.status === 200 || xhr.status === 201) { 
            console.log("DELETE 응답 :", xhr.response);
            const resultObj = JSON.parse(xhr.response);
            if (resultObj.result === 1) {
                alert('관리자 삭제가 완료되었습니다.');
                clear();
                modal.hide();
            } else {
                alert('존재하지 않는 관리자입니다. code를 확인하세요');
            }
        } else {
            console.error('오류1-', xhr.response);
            console.error('오류2-', xhr.status);
            alert('서버 오류 발생');
        }
    };
    xhr.send();
});
// 관리자 리스트
const selectAdmin = function(){
   const xhr = new XMLHttpRequest();
   xhr.open('GET', '../admin/list')
   xhr.send();
   xhr.onload = function () {
      if (xhr.status === 200 || xhr.status === 201){
         console.log("요청응답: ", xhr.response); 
            const arr = JSON.parse(xhr.response); 
            console.log("get, ../admin/list", arr);
            
            const list = document.querySelector('#list');
            list.innerHTML = '';
            arr.forEach((ele, index) => {
            const li = document.createElement('li');
            const ul = document.createElement('ul');
            ul.className = 'row';
                ul.id = 'row';
                ul.innerHTML =
                `<li>${index + 1}</li>
                 <li>${ele.code}</li>
                 <li>${ele.name}</li>
                 <li>${new Date(ele.regdate).toLocaleDateString()}</li>`;
                    li.appendChild(ul);
                    list.appendChild(li);
         })
            
      }
   }
}
selectAdmin()