const arrFavorite =[]       
const checkFavorite =e => {
    e.stopPropagation()

    const target = e.target
    if(target.tagName !== 'INPUT') {return}

    if(target.checked) arrFavorite.push(target.value)        
    else {      
        const index = arrFavorite.indexOf(target.value);    
        if (index !== -1) { arrFavorite.splice(index, 1); 	}      
    }
	document.querySelector('#favorites').value = arrFavorite.toString()
	
    console.log(document.querySelector('#favorites').value)        
}
document.querySelector('#selfavorites').addEventListener('click', checkFavorite)













