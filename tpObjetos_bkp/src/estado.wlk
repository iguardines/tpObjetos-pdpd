import Vivienda.*
import UserException.*

object estado {
	var participantes = [ ]
	var propiedades = [ ]

	method incautarPropiedad(unaPropiedad) {
		propiedades.add(unaPropiedad)
	}

	method agregarFamiliaParticipante(familia) {
		participantes.add(familia)
	}

	method sacarFamiliaParticipante(unaPropiedad) {
		if (participantes != null) {
			participantes.remove(unaPropiedad)
		}
	}

	method sacarPropiedadParticipante(unaFamilia) {
		if (propiedades != null) {
			propiedades.remove(unaFamilia)
		}
	}

	method familiasHabilitadasPara(unaPropiedad) {
		return participantes.filter({ participante =>
		participante.puedeAccederAPropiedad(unaPropiedad) })
	}

	method finalizarPlan(unaFamilia, unaPropiedad) {
		self.sacarFamiliaParticipante(unaFamilia)
		self.sacarPropiedadParticipante(unaPropiedad)
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

	method propiedadesAEntregar() {
		return propiedades.filter({ v => v.esHabitable() })
	}

	
  	method asignarPropiedad(unaFamilia, unaPropiedad) {
		if (self.estanRegistradas (unaFamilia, unaPropiedad)){
		self.familiaHabitaPropiedad(unaFamilia, unaPropiedad)
		self.finalizarPlan(unaFamilia, unaPropiedad)
	  	console.println("Plan finalizado")}
	}

	method estanRegistradas (unaFamilia, unaPropiedad){
		return (self.familiaRegistradaAlPlan(unaFamilia) && self.familiaRegistradaAlPlan(unaFamilia))
	}
	
	method familiaHabitaPropiedad(unaFamilia, unaPropiedad){
		unaPropiedad.habitar(unaFamilia)
	}	
		

	method familiaNoCumpleRequisitosParaAdquirirla(unaFamilia, unaPropiedad) {
		return ( ! self.familiaRegistradaAlPlan(unaFamilia) || !
		unaFamilia.puedeAccederAPropiedad(unaPropiedad) )
	}

	method buscarPropiedad(unaFamilia) {
		return self.propiedadesAEntregar().find({ p =>
		unaFamilia.puedeAccederAPropiedad(p) })
	}
	
	method hayPropiedadDisponible(unaFamilia) {
		return self.propiedadesAEntregar().any({ p =>
		unaFamilia.puedeAccederAPropiedad(p) })
	}

	method asignarViviendas() {
		self.propiedadesAEntregar().forEach({ p => self.buscarAsignar(p)

		})
	}
	
	method buscarAsignar(p) {
		var familias = self.familiasHabilitadasPara(p)
		if (familias != null) {
			self.asignarPropiedad(familias.head(), p)
		}
	}
	
	method cantPropiedades() {
		return propiedades.size()
	}
}