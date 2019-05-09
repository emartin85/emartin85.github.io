/*funcion para que el slider avance automaticamente*/
var posSlide = 0;
avanza();
function avanza(){
	if(posSlide<5){
		posSlide++;
	}
	else{
		posSlide = 1;
	}
	document.getElementById("slide").src = "../imagenes/slide/slide"+posSlide+".jpg";
	setTimeout(avanza, 5000); // cambia cada 5 segundos
}
/*funciones para controlar la musica*/
var audio = document.getElementById("musica"); 
document.getElementById("controlplay").onclick = function() { 
	audio.play(); 
}
document.getElementById("controlpausa").onclick = function() {
	audio.pause();
}
/*funcion para que se muestren los botones de musica*/
var estado = 0;
document.getElementById("despaud").onclick = function() {
	if(estado<1){
		document.getElementById("controlplay").style.opacity = 1.0;
		document.getElementById("controlpausa").style.opacity = 1.0;
		estado = 1;
	}
	else{
		document.getElementById("controlplay").style.opacity = 0.0;
		document.getElementById("controlpausa").style.opacity = 0.0;
		estado = 0;
	}
}