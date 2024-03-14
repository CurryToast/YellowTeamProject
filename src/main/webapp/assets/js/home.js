const movieBarArrowAction = (x) => {
	document.querySelector('.card-wrapper').scrollBy({
		left: x,
		behavior: 'smooth'
	});
};

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
			movieBanner.innerHTML = `<span class="arrow left material-symbols-outlined" onclick="movieBarArrowAction('-50')">chevron_left</span>`;

			const cardWrapper = document.createElement('div');
			cardWrapper.classList.add('card-wrapper');

			arr.forEach(el => {
				let status = "playing";
				let statusText = "상영중";

				const today = new Date();
				const startDate = new Date(el.release_date);
				const endDate = new Date(el.release_date).setDate(startDate.getDate() + 14);

				if (today > endDate) {
					status = "closed";
					statusText = "상영 종료";
				} else if (today < startDate) {
					status = "reserved";
					statusText = "개봉 예정";
				}

				const card = document.createElement('div');
				card.className = 'movieCard';

				const poster = document.createElement('img');
				poster.src = `https://yellows3.s3.ap-northeast-2.amazonaws.com/share/poster/${el.poster}.jpg`;
				poster.alt = el.mcode;
				card.appendChild(poster);

				const name = document.createElement('h3');
				name.classList.add('name')
				name.innerHTML = el.mname;
				card.appendChild(name);

				const statusLabel = document.createElement('span');
				statusLabel.classList.add('label', status);
				statusLabel.innerHTML = statusText;
				card.appendChild(statusLabel);

				const releasDate = document.createElement('p');
				releasDate.classList.add('release-date');
				releasDate.innerHTML = `개봉일: ${el.release_date}`;
				card.appendChild(releasDate);

				const synopsys = document.createElement('p');
				synopsys.classList.add('synopsys');
				synopsys.innerHTML = el.synopsys;
				card.appendChild(synopsys);

				cardWrapper.appendChild(card);
			});

			movieBanner.appendChild(cardWrapper);
			movieBanner.innerHTML += `<span class="arrow right material-symbols-outlined" onclick="movieBarArrowAction('50')">chevron_right</span>`;
		}
	}
}

loadMovieList();