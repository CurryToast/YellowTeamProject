
function onLoaderFunc(){
  const target = document.querySelector("input[type='checkbox']");
  target.readOnly = true;
}


function select(){
	var SeatsCount =  document.querySelector("#Numseats").value
	console.log(SeatsCount)
  if ((SeatsCount.length == 0 )){
	  alert("예매 인원을 선택해주세요");
  } else {
    document.querySelector("input[type='checkbox']").disabled = false;
    document.getElementById("notification").innerHTML = "<b style='margin-bottom:0px;background:yellow;'>좌석을 선택해주세요</b>";
	select2();
  }
}


function select2(){
  if ($("input:checked").length == SeatsCount.length) {
    $(":checkbox").prop('disabled', true);
    $(':checked').prop('disabled', false);
  }else{
      $(":checkbox").prop('disabled', false);
    }
};


/*
function btnActive()  {
  const target = querySelector("input[type='checkbox']");
  target.disabled = false;
}

function btnDisabled()  {
  const target = querySelector("input[type='checkbox']");
  target.disabled = true;
}
*/


document.querySelector('#complete').addEventListener('click', reserve);

function reserve() {
    const selectedSeat = document.querySelector('input[name="seat"]:checked');
    
    if ($("input:checked").length == ($("#Numseats").val())){
       $(".seatStructure *").prop("disabled", true);
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
    }else {
      alert(($("#Numseats").val()) + "개의 좌석을 선택해주세요")
    }
    
    
   
}