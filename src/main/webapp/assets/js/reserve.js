
document.querySelector('#complete').addEventListener('click', reserve);

function reserve() {
    const selectedSeat = document.querySelector('input[name="seat"]:checked');

    if (selectedSeat) {
        const seatValue = selectedSeat.value;
        console.log('선택좌석:', seatValue);
        
		const message = seatValue + ' 좌석을 선택하시겠습니까?';
		const yn = confirm(message);


		if (!yn) {
            alert("취소되었습니다.");
            url ='reserve';
			console.log('url:', url);
        } else {
            url ='complete'
			alert('예매가 완료되었습니다.')
			console.log('url:', url);}
			
		location.href=url
				
	    } else if(selectedSeat==null) {
	        alert('좌석을 선택해주세요');
	    }
}


