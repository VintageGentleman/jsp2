const pDiv = document.getElementsByClassName("pDiv");
const sel_option = document.getElementsByClassName("sel_option");

for(let i = 0; i < pDiv.length; ++i) {
	pDiv[i].addEventListener("click", () => tapView(i));
}

function tapView(num) {		
	if(sel_option[num].style.display !== "grid") {
		for(var i = 0; i < sel_option.length; ++i) {
			sel_option[i].style.display = "none";
		}
		sel_option[num].style.display = "grid";
	}
}
