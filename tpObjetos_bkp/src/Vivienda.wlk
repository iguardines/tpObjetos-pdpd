import UserException.*

class Vivienda{
	var horasTrabajoRestante
	var horasTrabajoAcceso
	var habitantes=[]

	constructor(_horasTrabajoAcceso, _horasTrabajoRestante){
		horasTrabajoAcceso = _horasTrabajoAcceso
		horasTrabajoRestante = _horasTrabajoRestante
		}

	
	method esHabitable() {
		return (horasTrabajoRestante == 0 && self.estaVacia())
	}
	
	method estaVacia(){ 		
		return habitantes.isEmpty()
	}
	method tiempoTrabajado(cantHoras){
		self.disminuyeHorasRestantes(cantHoras)
	}
	
	method disminuyeHorasRestantes(cantHoras){
		horasTrabajoRestante=horasTrabajoRestante - cantHoras
	}
	
	method horasTrabajoRestante(){
		return horasTrabajoRestante
	}
	
	method horasTrabajoAcceso(){
		return horasTrabajoAcceso
	}
	
	method puedeAcceder(unaFamilia){
		return self.esHabitable() && self.cumpleHorasNecesariasAcceso(unaFamilia) 
		&& self.soportaFamilia(unaFamilia.cantMiembrosFamilia())
	}
			
	method cumpleHorasNecesariasAcceso(unaFamilia){
		return unaFamilia.cantHorasTrabajadas()>= self.horasTrabajoAcceso() 
	
	}
	method soportaFamilia(cantMiembros){
		return false // Le agregué return false porque me pedía que retorne algo, igualmente se redefinen en las subclases y nunca va a usarse este método abtracto
	}	
	
	method habitar(familia){
		if(!self.puedeAcceder(familia)){
			throw new UserException("la vivienda no puede aun ser habitada.")
		}
		habitantes = familia.miembrosFamilia()
	}
}