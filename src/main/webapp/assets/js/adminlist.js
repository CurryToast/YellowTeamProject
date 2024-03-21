const selectAdmin = function(){
	const xhr = new XMLHttpRequest();
	xhr.open('GET', '../admin/list')
	xhr.send();
	xhr.onload = function () {
		if (xhr.status === 200 || xhr.status === 201){
			console.log("요청응답: ", xhr.response); 
            const arr = JSON.parse(xhr.response); 
            console.log("get admin/list", arr);
            
            const list = document.querySelector('#list');
            list.innerHTML = '';
            arr.forEach((ele, index) => {
				const li = document.createElement('li');
				const ul = document.createElement('ul');
				ul.className = 'row';
                ul.id = 'row';
                ul.innerHTML =
                `<li>${index + 1}</li>
                 <li>${ele.code}</li>
                 <li>${ele.name}</li>
                 <li>${new Date(ele.regdate).toLocaleDateString()}</li>`;
                    li.appendChild(ul);
                    list.appendChild(li);
			})
            
		}
	}
}
selectAdmin()