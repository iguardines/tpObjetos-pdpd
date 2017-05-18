
class Persona {
	var nombre
	var edad
	var horasTrabajadasTotal
	var habilidad

	constructor(_nombre, _edad, _horasTrabajadasTotal, _habilidad) {
		nombre = _nombre edad = _edad horasTrabajadasTotal = _horasTrabajadasTotal
		habilidad = _habilidad
	}

	method trabaja(cantHoras, unaPropiedad) {
		unaPropiedad.disminuyeHorasRestantes(habilidad.porcentaje() * cantHoras +
		cantHoras)
		self.aumentaHorasTrabajadas(( habilidad.porcentaje() * cantHoras ) +
		cantHoras)
	}

	method aumentaHorasTrabajadas(cantHoras) {
		horasTrabajadasTotal += cantHoras
	}

	method horasTrabajadasTotal() {
		return horasTrabajadasTotal
	}
}