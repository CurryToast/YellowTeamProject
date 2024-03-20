const imgSizing = (img) => {
	img.width = document.querySelector('#upload-section').clientWidth + 2;
    img.height = document.querySelector('#upload-section').clientHeight + 2;
}

document.querySelector('input#poster').addEventListener('change', (e) => {
	if (e.target.files) {
		const img = document.createElement("img");
		img.id = "img-preview";
      	img.src = URL.createObjectURL(e.target.files[0]);
      	imgSizing(img);
      	img.onload = function () {
	      URL.revokeObjectURL(this.src);
	    };

	    document.querySelector('#upload-button').innerHTML = "";
	    document.querySelector('#upload-button').appendChild(img);
	} else {
		document.querySelector('#upload-button').innerHTML = "영화 포스터 업로드";
	}
});

document.querySelector('#movie-register').addEventListener('click', () => {
	if (!confirm("영화를 등록하시겠습니까?")) {
		return;
	}

	const fileName = document.forms[0].poster.files[0].name.split(".");
	fileName.pop();
	const poster = fileName[0];
	const mname = document.forms[0].mname.value;
	const genre = document.forms[0].genre.value;
	const director = document.forms[0].director.value;
	const release_date = document.forms[0].release_date.value;
	const producer = document.forms[0].producer.value;
	const rating = Number(document.forms[0].rating.value);
	const running_time = document.forms[0].running_time.value;
	const mgrade = Number(document.forms[0].mgrade.value);
	const country = document.forms[0].country.value;
	const synopsys = document.forms[0].synopsys.value;
	const mcast = document.forms[0].mcast.value;

	const jsObj = {
		mname, genre, director,
		release_date, producer,
		rating, running_time, synopsys,
		mgrade, country, mcast, poster,
		posterUrl: document.forms[0].poster.files[0].split("blob:")[1]
	};
	const jsStr = JSON.stringify(jsObj);

	const xhr = new XMLHttpRequest();
	xhr.open('POST', '../api/movie');
	xhr.setRequestHeader("Content-Type", "application/json; charset=UTF-8");
	xhr.send(jsStr);
	xhr.onload = function() {
		if (xhr.status === 200 || xhr.status === 201) {
			location.href = './list';
		} else {
			console.error("오류1 ", xhr.status);
			console.error("오류2 ", xhr.response);
		}
	}
});

window.addEventListener('resize', () => {
	const preview = document.querySelector('#img-preview');
	if (preview) {
		imgSizing(preview);
	}
});