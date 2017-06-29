class Familia{
	var integrantes=[]
	var representante // para asignar representante ARI 24/05
	
	method accesoHabilitadoAPropiedad(unaPropiedad){
		return unaPropiedad.esHabitable() && self.cumpleCantidadHorasAcceso(unaPropiedad) 
		&& unaPropiedad.soportaFamilia(self.cantMiembrosFamilia())
	}	
	
	method cumpleCantidadHorasAcceso(unaPropiedad){
		return unaPropiedad.puedeAceder(self)
	}
	
	method agregarAFamilia(unaPersona){
		integrantes.add(unaPersona)
	}
	
	method miembrosFamilia(){
		return integrantes
	}
	
	method cantMiembrosFamilia(){
		return integrantes.size()	
	}
	
	method cantHorasTrabajadas(){
		return integrantes.sum({integrante=>integrante.horasTrabajadasTotal()})
	}
	method asignarRepresentante(unaPersona){ 
		if (integrantes.contains(unaPersona)){ 
		representante = unaPersona}
	}
	
}