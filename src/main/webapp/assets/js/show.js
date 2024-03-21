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
       
