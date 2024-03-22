
function onLoaderFunc(){
	$("#seatsBlock :checkbox").prop('disabled', true);
    $(".seatStructure").click(function() {
    var SeatsCount = document.querySelector("#Numseats").value;
    if (SeatsCount.length === 0) {
        alert("예매 인원을 먼저 선택해주세요");
    }
});
}


function select() {
    var SeatsCount = document.querySelector("#Numseats").value;
    const theater = document.querySelector('select[name="cinemas"]').value;
    console.log(SeatsCount);
    
	if(theater.length == 0){
		alert("극장을 선택해주세요");
		} else {
			if (SeatsCount.length == 0) {
		        alert("예매 인원을 선택해주세요");
		    } else if (SeatsCount> 100 || SeatsCount==0){
				alert("숫자 1~ 100 이내로 선택해주세요");
			} else 
				{alert("예매할 좌석을 선택해주세요");
		        $("#seatsBlock :checkbox").prop('disabled', false);}
    		} 		
	}



/*작동안함 .. 인원수만큼만 클릭할 수 있도록 하고 싶음*/
 document.querySelector("input[type='checkbox']").addEventListener('change', function() {
 var SeatsCount =  document.querySelector("#Numseats").value
     console.log($("#seatsBlock input[type='checkbox']:checked").length)
  if ($("#seatsBlock input[type='checkbox']:checked").length == SeatsCount) {
    $("#seatsBlock input[type='checkbox']").prop('disabled', true);
    $("#seatsBlock input[type='checkbox']:checked").prop('disabled', false);
  }else{
      $("#seatsBlock input[type='checkbox']").prop('disabled', false);
  }
});


document.querySelector('#complete').addEventListener('click', reserve);

function reserve() {
    if ($("input:checked").length == ($("#Numseats").val())){
       
       var allSeatsVals = [];
       $('#seatsBlock :checked').each(function() {
       allSeatsVals.push($(this).val());
     	});
       console.log(allSeatsVals)
       const message = allSeatsVals + ' 좌석을 선택하시겠습니까?';
       const yn = confirm(message);

        if (yn) {
            const form = document.forms[0]  
            $('#seatsAll').val(allSeatsVals);
            form.submit(); 
            alert(document.getElementById(seatsAll).value);
            alert('예매가 완료되었습니다.');
        } else {
            alert("취소되었습니다.");
        }
    }else {
      alert(($("#Numseats").val()) + "개의 좌석을 선택해주세요")
    }
    
}
   
