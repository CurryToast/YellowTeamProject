    	var currentTab = 'synopsys'; 

	    function showSynopsys() {
	        var synopsysElement = document.getElementById('synopsys');
	        var infoElement = document.getElementById('info');
	        
	        synopsysElement.style.display = 'block';
	        infoElement.style.display = 'none';
	    }
	
	    function showInfo() {
	        var synopsysElement = document.getElementById('synopsys');
	        var infoElement = document.getElementById('info');
	        
	        infoElement.style.display = 'block';
	        synopsysElement.style.display = 'none';
	        
	    }
	
	    window.onload = function() {
	        var synopsysElement = document.getElementById('synopsys');
	        var infoElement = document.getElementById('info');
	
	        if (currentTab === 'synopsys') {
	            synopsysElement.style.display = 'block';
	            infoElement.style.display = 'none';
	        } else if (currentTab === 'info') {
	            synopsysElement.style.display = 'none';
	            infoElement.style.display = 'block';
	        }
	    }
	    
       var currentTab = 'synopsys'; 

       function showSynopsys() {
           var synopsysElement = document.getElementById('synopsys');
           var infoElement = document.getElementById('info');
           
           synopsysElement.style.display = 'block';
           infoElement.style.display = 'none';
       }
   
       function showInfo() {
           var synopsysElement = document.getElementById('synopsys');
           var infoElement = document.getElementById('info');
           
           infoElement.style.display = 'block';
           synopsysElement.style.display = 'none';
           
       }
   
       window.onload = function() {
           var synopsysElement = document.getElementById('synopsys');
           var infoElement = document.getElementById('info');
   
           if (currentTab === 'synopsys') {
               synopsysElement.style.display = 'block';
               infoElement.style.display = 'none';
           } else if (currentTab === 'info') {
               synopsysElement.style.display = 'none';
               infoElement.style.display = 'block';
           }
       }
       
	function handleBooking() {
    var current = new Date();
    
    console.log('schedule:', schedule);
    console.log('current:', current);   
    
    var oneMonthLater = new Date(current);
    oneMonthLater.setMonth(oneMonthLater.getMonth() + 1);
    
    
    if (schedule > current && schedule <= oneMonthLater) {
        location.href = 'reserve?movie_code=' + movieCode;
    } else {
        alert("해당 영화는 예매가 불가능합니다.");
    }
}