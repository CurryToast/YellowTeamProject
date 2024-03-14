const loadMovieList = () => {
	const xhr = new XMLHttpRequest();
	xhr.open('GET', 'api/movie');
	xhr.send();
	xhr.onload = function() {
		if (xhr.status === 200 || xhr.status === 201) {
			console.log("요청 응답 :", xhr.response);
			const arr = JSON.parse(xhr.response);
			console.log("get api/movie", arr);
			
			const movieBanner = document.querySelector('#banner');
			arr.forEach(el => {
				const card = document.createElement('div');
				card.className = 'movieCard';
				
				const poster = document.createElement('img');
				poster.src = `https://yellows3.s3.ap-northeast-2.amazonaws.com/share/poster/${el.poster}.jpg`;
				poster.alt = el.mcode;
				card.appendChild(poster);
				
				const name = document.createElement('h3');
				name.innerHTML = el.mname;
				card.appendChild(name);
				
				const synopsys = document.createElement('p');
				synopsys.innerHTML = el.synopsys;
				card.appendChild(synopsys);
				
				movieBanner.appendChild(card);
			});
		}
	}
}

loadMovieList();