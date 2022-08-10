
/*Funciones*/

console.log("funciones");

function Calcular(){
	var val1 =	document.getElementById("txtValor1");
	var val2 =	document.getElementById("txtValor2");

	var peso = val1.value;
	var estatura = val2.value;
	
	var res = IMC(peso, estatura);
	
	var objRes = document.getElementById("divRes");
	
	if(res){
		nivel(res);
		objRes.innerHTML = res;
		
	} else {
		objRes.innerHTML = "Valores no validos";
	}	
 
	

}

function nivel(res){

    var divNiv = document.getElementById("divNiv");
	var cat;

    if(res<18.5){
        cat="Bajo de peso"
    }if (res>=18.5 && res<=24.9) {
        cat="Normal"
    } if (res>=25 && res<=29.9) {
        cat= "Sobrepeso"
    }if (res>30) {
        cat= "Obesidad"
    } else {
        if(isNaN(res) == true){
        cat="Esta ingresando datos no numericos"
    }
    }

	divNiv.innerHTML=cat;
}



function IMC(peso, estatura) {
	let res;
	
	if(isNaN(peso) == true || isNaN(estatura) == true  || estatura==0){
		return;
	} else {
		res = Number(peso) /( Number(estatura)* Number(estatura));
		return res.toFixed(2);
	}	
}
