import Vivienda.*

class Casa inherits Vivienda{
	var cantAmbientes
	
	constructor(_horasTrabajoAcceso, _horasTrabajoRestante,_cantAmbientes) = 
		super(_horasTrabajoAcceso, _horasTrabajoRestante){
		cantAmbientes=_cantAmbientes
	 }
	 
	 override method soportaFamilia(cantFamiliares){
	 	return self.cantAmbientes() == (cantFamiliares+1) || self.cantAmbientes() == cantFamiliares
	 }
	
	method cantAmbientes(){
		return cantAmbientes 
	}
}