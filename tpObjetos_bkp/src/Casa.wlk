import Vivienda.*

class Casa inherits Vivienda{
	var cantAmbientes
	
	constructor(_horasTrabajoRestante,_horasTrabajoAcceso,_cantAmbientes) = 
		super(_horasTrabajoRestante,_horasTrabajoAcceso){
		cantAmbientes=_cantAmbientes
	 }
	 
	 override method soportaFamilia(cantFamiliares){
	 	return self.cantAmbientes() == (cantFamiliares+1) || self.cantAmbientes() == cantFamiliares
	 }
	
	method cantAmbientes(){
		return cantAmbientes 
	}
}