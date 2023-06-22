const form = document.getElementById("form1");
const address = document.getElementById("addr");

function checkAddress() {
	if(!address.value){
		alert("Please check address");
		address.focus();
	} else {
		form.submit();
	}
}
