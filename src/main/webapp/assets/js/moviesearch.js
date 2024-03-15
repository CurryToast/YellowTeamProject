const createMovieList = (arr) => {
	console.log("get api/movie", arr);
	
	const movieBanner = document.querySelector('#searchlist');
	movieBanner.innerHTML = '';
	arr.forEach(el => {
		const card = document.createElement('div');
		card.className = 'movieCard';
		
		const anchor = document.createElement('a');
		anchor.href=`read?mcode=${el.mcode}`;
		
		const poster = document.createElement('img');
		poster.src = `https://yellows3.s3.ap-northeast-2.amazonaws.com/share/poster/${el.poster}.jpg`;
		poster.alt = el.mcode;
		anchor.appendChild(poster);

		card.appendChild(anchor);
		
		const name = document.createElement('h3');
		name.innerHTML = el.mname;
		card.appendChild(name);
		
		const release_date = document.createElement('ul');
		release_date.innerHTML = el.release_date;
		card.appendChild(release_date);
		
		const synopsys = document.createElement('p');
		synopsys.innerHTML = el.synopsys;
		card.appendChild(synopsys);
		
		movieBanner.appendChild(card);
	});
}

		document.querySelector('img').addEventListener('click', function() {
    	location.href = `read?mcode=${vo.mcode}&page=${paging.currentPage}`;
		});


const loadMoviesaerchList = () => {
	const xhr = new XMLHttpRequest();
	xhr.open('GET', '/YellowTeamProject/api/movie');
	xhr.send();
	xhr.onload = function() {
		if (xhr.status === 200 || xhr.status === 201) {
			console.log("요청 응답 :", xhr.response);
			const arr = JSON.parse(xhr.response);
			createMovieList(arr);
		}
	}
}

const form = document.forms[0];
document.querySelectorAll('option').forEach(ele => {
	if(ele.value=='${paging.column}')
		ele.selected=true;
	else	
		ele.selected=false;
});

document.querySelector('#search-btn').addEventListener('click', () => {
	const find = document.forms[0].findText;
	const column = document.forms[0].column;
	let obj = {};

	if(find.value ==='' || column.value ==='none') {
		alert('검색어 입력과 검색 항목 선택을 하세요.')
		find.focus();
	} else {
		switch(column.value) {
		  case 'mname':
			obj.mname = find.value;
		    break;
		  case 'genre':
			obj.genre = find.value;
		    break;
		  case 'director':
			obj.director = find.value;
		    break;
		  case 'release_date':
			obj.release_date = find.value;
		    break;
		  case 'producer':
			obj.producer = find.value;
		    break;
		   case 'rating':
			obj.rating = find.value;
		    break;
		    case 'running_time':
			obj.running_time = find.value;
		    break;
		    case 'mgrade':
			obj.mgrade = find.value;
		    break;
		    case 'country':
			obj.country = find.value;
		    break;
		    case 'mcast':
			obj.mcast = find.value;
		    break;
		    
		  default:
		    break;
		}
	}
	
	const xhr = new XMLHttpRequest();
	xhr.open('PUT', '/YellowTeamProject/api/movie');
	xhr.setRequestHeader("Content-Type", "application/json;charset=UTF-8");
	xhr.send(JSON.stringify(obj));
	xhr.onload = function() {
		if (xhr.status === 200 || xhr.status === 201) {
			console.log("요청 응답 :", xhr.response);
			const arr = JSON.parse(xhr.response);
			createMovieList(arr);
		}
	}
});

loadMoviesaerchList();