
class Familia {
	var integrantes = [ ]
	var representante // para asignar representante ARI 24/05

	constructor (_representante){
		representante = _representante
		integrantes.add(_representante)
	}

	method puedeAccederAPropiedad(unaPropiedad) {
		return unaPropiedad.esHabitable() &&
		self.cumpleCantidadHorasAcceso(unaPropiedad)
		&& unaPropiedad.soportaFamilia(self.cantMiembrosFamilia())
	}

	method cumpleCantidadHorasAcceso(unaPropiedad) {
		return unaPropiedad.cumpleHorasNecesariasAcceso(self)
	}

	method agregarAFamilia(unaPersona) {
		integrantes.add(unaPersona)
	}

	method miembrosFamilia() {
		return integrantes
	}

	method cantMiembrosFamilia() {
		return integrantes.size()
	}

	method cantHorasTrabajadas() {
		return integrantes.sum({ integrante => integrante.horasTrabajadasTotal() })
	}
	method asignarRepresentante(unaPersona) {
		if (integrantes.contains(unaPersona)) {
			representante = unaPersona }
	}
	
	method representante(){
		return representante
	}
}