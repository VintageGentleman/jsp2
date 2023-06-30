const modifyBtn = document.querySelector('#modify-btn');

modifyBtn.addEventListener('click', (e) => {
	location.href = `./modify?id=${e.target.dataset.id}`;
});

const listBtn = document.querySelector('#list-btn');

listBtn.addEventListener('click', () => {
	location.href = './list';
});