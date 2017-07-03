class Habilidad {
	var porcentaje

	constructor(_porcentaje){
		  porcentaje = _porcentaje 
	}

	method calcularHoras(cantHoras){
	  return porcentaje * cantHoras
	}
	
}

object electricidad inherits Habilidad(1.2){}

object decorador inherits Habilidad(2){}

object desordenado inherits Habilidad(0.75){}

object sinHabilidad inherits Habilidad(1){}