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
            const form = document.forms[0]  
            form.submit(); 
            alert('예매가 완료되었습니다.');
        } else {
            alert("취소되었습니다.");
        }
    }
}