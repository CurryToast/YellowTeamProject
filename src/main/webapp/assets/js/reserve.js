




$(":checkbox").click(function() {
  if ($("input:checked").length == ($("#Numseats").val())) {
    $(":checkbox").prop('disabled', true);
    $(':checked').prop('disabled', false);
  }
  else
    {
      $(":checkbox").prop('disabled', false);
    }
});




document.querySelector('#complete').addEventListener('click', reserve);

function reserve() {
    const selectedSeat = document.querySelector('input[name="seats"]:checked');

    if (selectedSeat) {
        const seatValue = selectedSeat.value;
        console.log('선택좌석:', seatValue);
    } else {
        console.log('좌석을 선택해주세요');
    }
}
