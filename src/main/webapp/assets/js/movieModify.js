document.querySelectorAll('.movie-box').forEach((el, idx) => {
	el.addEventListener('click', () => {
		const modifyModal = document.querySelector('.modify-modal');
		if (modifyModal) {
			const mcode = document.querySelector(`input[name="${idx}-mcode"]`).value;
			const mname = document.querySelector(`input[name="${idx}-mname"]`).value;
			const running_time = document.querySelector(`input[name="${idx}-running_time"]`).value;
			const director = document.querySelector(`input[name="${idx}-director"]`).value;
			const mcast = document.querySelector(`input[name="${idx}-mcast"]`).value;
			const cidx = document.querySelector(`input[name="${idx}-cidx"]`).value;
			const schedule = document.querySelector(`input[name="${idx}-schedule"]`).value;
			const synopsys = document.querySelector(`input[name="${idx}-synopsys"]`).value;

			modifyModal.querySelector('form').mcode.value = mcode;
			modifyModal.querySelector('form').mname.value = mname;
			modifyModal.querySelector('form').running_time.value = running_time;
			modifyModal.querySelector('form').director.value = director;
			modifyModal.querySelector('form').mcast.value = mcast;
			modifyModal.querySelector('form').cidx.value = cidx;
			modifyModal.querySelector('form').schedule.value = schedule;
			modifyModal.querySelector('form').synopsys.value = synopsys;

			modifyModal.classList.remove('close');
			document.body.style.overflow = 'hidden';
		}
	});
});

document.querySelector('#modal-save').addEventListener('click', () => {
	const modifyModal = document.querySelector('.modify-modal');
	if (modifyModal) {
		const mcode	= Number(modifyModal.querySelector('form').mcode.value);
		const mname	= modifyModal.querySelector('form').mname.value;
		const running_time	= modifyModal.querySelector('form').running_time.value;
		const director	= modifyModal.querySelector('form').director.value;
		const mcast	= modifyModal.querySelector('form').mcast.value;
		const cidx	= Number(modifyModal.querySelector('form').cidx.value);
		const schedule	= modifyModal.querySelector('form').schedule.value;
		const synopsys	= modifyModal.querySelector('form').synopsys.value;

		const jsObj = {
			mcode,
			mname,
			running_time,
			director,
			mcast,
			// cidx,
			// schedule,
			synopsys
		};
		console.log('jsObj: ', jsObj);
		const jsStr = JSON.stringify(jsObj);
		console.log('jsStr: ', jsStr);
	
		const xhr = new XMLHttpRequest();
		xhr.open('PUT', '/YellowTeamProject/api/movie/modify', true);
		xhr.setRequestHeader("Content-Type", "application/json");
		xhr.send(jsStr);
		xhr.onload = function() {
			if (xhr.status === 200 || xhr.status === 201) {
				const rs = JSON.parse(xhr.response);
				if (rs.result === 1) {
					location.href = location.origin + "/YellowTeamProject/movie/modify";
				}
			} else {
				console.error("오류1 ", xhr.status);
				console.error("오류2 ", xhr.response);
			}
		}
	}
});

document.querySelector('#modal-close').addEventListener('click', () => {
	const modifyModal = document.querySelector('.modify-modal');
	if (modifyModal) {
		temp = {};
		modifyModal.classList.add('close');
		document.body.style.overflow = 'auto';
	}
});