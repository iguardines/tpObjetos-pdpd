import Vivienda.*

class Casa inherits Vivienda{
	var cantAmbientes
	
	constructor (_horasTrabajoRestante,_horasTrabajoAcceso,_cantAmbientes){
		horasTrabajoRestante=_horasTrabajoRestante
		horasTrabajoAcceso=_horasTrabajoAcceso
		cantAmbientes=_cantAmbientes
	 }
	 
	 method soportaFamilia(cantFamiliares){
	 	return self.cantAmbientes() == (cantFamiliares+1) || self.cantAmbientes() == cantFamiliares
	 }
	
	method cantAmbientes(){
		return cantAmbientes
	}
}