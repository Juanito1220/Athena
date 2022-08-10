/*Funciones*/

console.log("funciones");

function Calcular(){
	var val1 =	document.getElementById("txtValor1");
	var val2 =	document.getElementById("txtValor2");

	var valor1 = val1.value;
	var valor2 = val2.value;
	
	var res = sumar(valor1, valor2);
	
	var objRes = document.getElementById("divRes");
	
	if(res){
		objRes.innerHTML = res;
	} else {
		objRes.innerHTML = "Valores no validos";
	}	
}

function sumar(valor1, valor2) {
	let res;
	
	if(isNaN(valor1) == true || isNaN(valor2) == true){
		return;
	} else {
		res = Number(valor1) + Number(valor2);
		return res;
	}	
}



