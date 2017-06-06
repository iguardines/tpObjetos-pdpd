import UserException.*

class Vivienda{
	var horasTrabajoRestante
	var estadoVivienda
	var horasTrabajoAcceso
	var habitantes=[]


	
	method esHabitable(){
		if (horasTrabajoRestante == 0 && self.estaVacia()){
		return true
		}
		else 
		{
		throw new User Exception("La casa no esta habitable")
		}
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
		habitantes = familia.miembrosFamilia()
	}
}
