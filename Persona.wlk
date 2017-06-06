
class Persona {
	var nombre
	var edad
	var horasTrabajadasTotal = 0		// comienza sin horas ARI 06/06
	var habilidad

	constructor(_nombre, _edad, _horasTrabajadasTotal, _habilidad) { // identado ARI 24/05
		nombre = _nombre 
		edad = _edad 
		// horasTrabajadasTotal = _horasTrabajadasTotal	// comienza sin horas ARI 06/06
		habilidad = _habilidad
	}

	// method trabaja(cantHoras, unaPropiedad) {	// 
	//	unaPropiedad.disminuyeHorasRestantes(habilidad.porcentaje() * cantHoras +
	//	cantHoras)
	//	self.aumentaHorasTrabajadas(( habilidad.porcentaje() * cantHoras ) +
	//	cantHoras)
	//}
	
	

	method aumentaHorasTrabajadas(cantHoras) {
		horasTrabajadasTotal += cantHoras
	}

	method horasTrabajadasTotal() {
		return horasTrabajadasTotal
	}
}
