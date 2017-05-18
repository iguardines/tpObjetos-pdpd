import Vivienda.*

object estado {
	var participantes = [ ]
	var propiedades = [ ]

	method incautarPropiedad(unaPropiedad) {
		propiedades.add(unaPropiedad)
	}

	method agregarFamiliaParticipante(unParticipante) {
		participantes.add(unParticipante)
	}

	method familiasHabilitadasPara(unaPropiedad) {
		return participantes.filter({ participante =>
		participante.accesoHabilitadoAPropiedad(unaPropiedad) })
	}

	method finalizarPlan(unaFamilia, unaPropiedad){
		participantes.remove(unaFamilia)
		propiedades.remove(unaPropiedad)
	}

	method familiasParticipantes() {
		return participantes
	}

	method propiedadesIncautadas() {
		return propiedades
	}

	method familiaRegistradaAlPlan(unaFamilia) {
		return self.familiasParticipantes().contains(unaFamilia)
	}

	method propiedadRegistradaAlPlan(unaPropiedad) {
		return self.propiedadesIncautadas().contains(unaPropiedad)
	}

	method asignarPropiedad(unaFamilia, unaPropiedad) {
	//si la propiedad o la familia no estan registrados, o si la familia no puede acceder a la propiedad
	//lo importante aca es que corta el flujo
		if (! self.propiedadRegistradaAlPlan(unaPropiedad) || !
		self.familiaRegistradaAlPlan(unaFamilia) || !
		unaFamilia.accesoHabilitadoAPropiedad(unaPropiedad)) {
			error.throwWithMessage("No se puede asignar esa propiedad a la familia")
		}
		unaPropiedad.habitar(unaFamilia)
		self.finalizarPlan(unaFamilia, unaPropiedad)
	}

	method cantPropiedades() {
		return propiedades.size()
	}
}