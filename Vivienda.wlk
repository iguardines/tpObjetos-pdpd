class Vivienda{
	var horasTrabajoRestante
	var estadoVivienda
	var horasTrabajoAcceso
	var habitantes=[]


	
	method esHabitable(){
		return horasTrabajoRestante == 0 && self.esInhabitada()
	}
	
	method esInhabitada(){
			return habitantes.isEmpty()
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
	
	method habitar(familia){
		if(!self.esInhabitada() || !self.esHabitable() ){
			error.throwWithMessage("La casa no esta habitable")
		}
		habitantes = familia.miembrosFamilia()
		
	}
}