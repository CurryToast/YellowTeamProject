    	let currentTab = 'synopsys'; 

	    function showSynopsys() {
	        let synopsysElement = document.getElementById('synopsys');
	        let infoElement = document.getElementById('info');
	        
	        synopsysElement.style.display = 'block';
	        infoElement.style.display = 'none';
	    }

	    function showInfo() {
	        let synopsysElement = document.getElementById('synopsys');
	        let infoElement = document.getElementById('info');
	        
	        infoElement.style.display = 'block';
	        synopsysElement.style.display = 'none';
	        
	    }

       window.onload = function() {
           let synopsysElement = document.getElementById('synopsys');
           let infoElement = document.getElementById('info');
   
           if (currentTab === 'synopsys') {
               synopsysElement.style.display = 'block';
               infoElement.style.display = 'none';
           } else if (currentTab === 'info') {
               synopsysElement.style.display = 'none';
               infoElement.style.display = 'block';
           }
       }
