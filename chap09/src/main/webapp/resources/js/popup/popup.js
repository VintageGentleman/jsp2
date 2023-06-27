// opener : 이 창을 연 부모 객체 window
console.log(opener);

const parent = opener.document.getElementById('addr');
console.log(parent);

parent.value = 'Apple';
parent.body.style.backgroundColor = 'navy';

window.addEventListener('beforeunload', () => {
	parent.body.style.backgroundColor = 'white';	
})