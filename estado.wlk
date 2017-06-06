import Vivienda.*
import UserException.*

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
	
	method propiedadesAEntregar() {
		return propiedades.filter({ v => v.esHabitable() })
	}

	method asignarPropiedad(unaFamilia, unaPropiedad) {		//ARI 05/06/2017
		if ( propiedadNoPuedeAdjudicarse(unaPropiedad) || 
		     familiaNoCumpleRequisitosParaAdquirirla(unaFamilia, unaPropiedad)
   		{
		throw new UserException("No se puede asignar esa propiedad a la familia")
		} unaPropiedad.habitar(unaFamilia)
		self.finalizarPlan(unaFamilia, unaPropiedad)
	}


	method propiedadNoPuedeAdjudicarse(unaPropiedad){		//ARI 05/06/2017
		return ! self.propiedadRegistradaAlPlan(unaPropiedad)
	}

	method familiaNoCumpleRequisitosParaAdquirirla(unaFamilia, unaPropiedad){ //ARI 05/06/2017
		return (! self.familiaRegistradaAlPlan(unaFamilia) || 
		   	! unaFamilia.accesoHabilitadoAPropiedad(unaPropiedad))
	}
	
//	method buscarAsignarCasaAFamiliasiEsPosible(unaFamilia) {
//		if (self.propiedadesAEntregar().any({ p => unaFamilia.accesoHabilitadoAPropiedad(p) })) {
//
//			var propiedad = self.propiedadesAEntregar().find({ p =>
//			unaFamilia.accesoHabilitadoAPropiedad(p) })
//			self.asignarPropiedad(unaFamilia, propiedad)
//			self.finalizarPlan(unaFamilia, propiedad)
//		}
//	}
//
//	method asignarViviendasTerminadasAFamilias() {
//		self.familiasParticipantes().any({ familia =>
//		self.buscarAsignarCasaAFamiliasiEsPosible(familia) })
//	}

	method cantPropiedades() {
		return propiedades.size()
	}
}
