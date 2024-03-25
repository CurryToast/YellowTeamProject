document.querySelectorAll('.movie-box').forEach((el, idx) => {
	el.addEventListener('click', (e) => {
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

document.querySelector('#modal-close').addEventListener('click', () => {
	const modifyModal = document.querySelector('.modify-modal');
		if (modifyModal) {
			temp = {};
			modifyModal.classList.add('close');
			document.body.style.overflow = 'auto';
		}
});