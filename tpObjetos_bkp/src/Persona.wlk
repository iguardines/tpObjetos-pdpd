import UserException.*

class Persona {
	var nombre
	var edad
	var horasTrabajadasTotal = 0		
	var habilidad

	constructor(_nombre, _edad, _horasTrabajadasTotal, _habilidad){
		nombre = _nombre 
		edad = _edad 
		habilidad = _habilidad
	}

	method trabaja(cantHoras, unaPropiedad) {
		if (edad < 18 || edad > 65){
			throw new UserException("La edad de esta persona no le permite trabajar")
		}
		unaPropiedad.tiempoTrabajado(self.horasSegunHabilidad(cantHoras))
		self.aumentaHorasTrabajadas(self.horasSegunHabilidad(cantHoras))
	}
	
	method horasSegunHabilidad(cantHoras){
		return habilidad.calcularHoras(cantHoras)
			}
	
	method habilidad(unaHabilidad){
		habilidad = unaHabilidad
	}
	
	method habilidad(){
		return habilidad
	}
	
	

	method aumentaHorasTrabajadas(cantHoras) {
		horasTrabajadasTotal += cantHoras
	}

	method horasTrabajadasTotal() {
		return horasTrabajadasTotal
	}
}