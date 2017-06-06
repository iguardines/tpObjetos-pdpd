import UserException.*

class Vivienda{
	var horasTrabajoRestante
	var estadoVivienda
	var horasTrabajoAcceso
	var habitantes=[]


	
	method esHabitable(){
		return horasTrabajoRestante == 0 && self.estaVacia()
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
		return (self.esHabitable() && self.cumpleHorasNecesariasAcceso(unaFamilia) 
		&& self.soportaFamilia(unaFamilia.cantMiembrosFamilia())
	}
			
	method cumpleHorasNecesariasAcceso(unaFamilia){
		return unaFamilia.cantHorasTrabajadas()>= self.horasTrabajoAcceso() 
	
	}
	
	method habitar(familia){
		if(!self.estaVacia() || !self.esHabitable() ){
			throw new UserException("La casa no esta habitable")
		}
		habitantes = familia.miembrosFamilia()
		
	}
}
