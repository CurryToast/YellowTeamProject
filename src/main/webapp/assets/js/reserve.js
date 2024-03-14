/*document.querySelector('#complete').addEventListener('click', reserve);

function reserve() {
    const selectedSeat = document.querySelector('input[name="seat"]:checked');
    
		if(!selectedSeat) {
	        alert('좌석을 선택해주세요');
	    } else if (selectedSeat) {
        const seatValue = selectedSeat.value;
        const message = seatValue + ' 좌석을 선택하시겠습니까?';
        const yn = confirm(message);

			if (!yn) {
	            alert("취소되었습니다.");
	        } else if(yn){
	            const form = document.createElement('form');
	            form.setAttribute('method', 'POST');
				document.forms[0].submit();
	            url ='complete'
	            alert('예매가 완료되었습니다.');
	            console.log('url:', url);
	            location.href=url
	        }
    	
	}
}*/

document.querySelector('#complete').addEventListener('click', reserve);

function reserve() {
    const selectedSeat = document.querySelector('input[name="seat"]:checked');
    
    if (!selectedSeat) {
        alert('좌석을 선택해주세요');
    } else {
        const seatValue = selectedSeat.value;
        const message = seatValue + ' 좌석을 선택하시겠습니까?';
        const yn = confirm(message);

        if (yn) {
            const form = document.createElement('form');
            const schedule = document.getElementsByName('schedule');
            const theater = document.getElementsByName('theater');
            form.setAttribute('method', 'POST');
            form.setAttribute('schedule', schedule);
            form.setAttribute('theater', theater);
            form.setAttribute('action', 'reserve'); // complete 페이지로 이동하는 대신 AJAX 요청을 보낼 수 있습니다.
            form.style.display = 'none'; // form을 화면에 표시하지 않습니다.

            const seatInput = document.createElement('input');
            seatInput.setAttribute('type', 'hidden');
            seatInput.setAttribute('name', 'seat');
            seatInput.setAttribute('value', seatValue);
            
            form.appendChild(seatInput);

            document.body.appendChild(form);
            form.submit(); // form을 서버로 전송합니다.

            // AJAX를 사용할 경우, 아래 라인의 주석 처리
            // alert('예매가 완료되었습니다.');
        } else {
            alert("취소되었습니다.");
        }
    }
}