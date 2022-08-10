var divCat = g('divCategoria'), divImc = g('divIMC'), ElmPeso =	g("txtPeso"), ElmEstatura =g("txtEstatura"),ElBtnCalcular = g("btnCalcular");

function g(id){
	return document.getElementById(id);
}
	
function objImc() {
	var imc = { 
				valor: 0,
				categoria: "",
				valido: true	
	};
	return imc;
}
		
		
		
function setCargando(cargando, msg){
	
	return new Promise((resolve) => {
		
		if(cargando){
			divCat.innerHTML = msg;
			divIMC.innerHTML = msg;
			ElBtnCalcular.disabled = true;
			resolve();
		} else {
			ElBtnCalcular.disabled = false;
		}
		
	
	});
	
}		
		
function Calcular(){	

	
	setCargando(true, "Calculando su imc...").then(()=> {
		
		CalcularIMC().then((res) => {  
			setCargando(false);
			divCat.innerHTML = res.categoria;
			divIMC.innerHTML = res.valor;
		});
		
	});
	
	

	
}		

function CalcularIMC(){
	
	return new Promise((resolve, reject) => {
		
		var oImc = objImc();

		var Peso = ElmPeso.value;
		var Estatura = ElmEstatura.value;

		var imc = CalculoIMC(Peso, Estatura);

		if(imc){
			oImc.valor = imc;
			oImc.valido = true;
			CategorizarIMC(imc).then((res)=> {
		oImc.categoria=res
			});
		} else {
			oImc.valido = false;
			oImc.categoria = "NA";
		}

		setTimeout(function() {
			resolve(oImc); 
			}, 3000)

		
	});

	
	
}


function CalculoIMC(peso, estatura, fn) {
	let imc;
	
	if(isNaN(peso) == true || isNaN(estatura) == true){
		return;
	} else {
			if (peso > 0 && estatura > 0){
			imc = Number(peso) /( Math.pow(Number(estatura), 2));
			return imc.toFixed(2);
		}
		else{
			return;
		}
	}	
}


function CategorizarIMC(imc) {

	return new Promise((resolve, reject) => {


	let catIMC;
	console.log(imc)
	if(isNaN(imc) == true ){
		console.log('validacion imc')
		console.log(isNaN(imc))
		return;
	} else {
		if (imc<18.5){
			catIMC = "Bajo Peso";
		}
		else if (imc>=18.5 && imc<=24.9){
			catIMC = "Normal";
		}
		else if (imc>24.9 && imc<=29.9){
			catIMC = "Sobrepeso";
		}
		else if (imc>29.9 ){
			catIMC = "Obesidad";
		}
	}	
	resolve (catIMC);
});
}





