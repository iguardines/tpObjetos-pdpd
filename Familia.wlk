class Familia{
	var integrantes=[]
	var representante // para asignar representante ARI 24/05
	
	method accesoHabilitadoAPropiedad(unaPropiedad){
		return unaPropiedad.esHabitable() && self.cumpleCantHorasAcceso(unaPropiedad) 
		&& unaPropiedad.soportaFamilia(self.cantMiembrosFamilia())
		
	}
	
	method cumpleCantHorasAcceso(unaPropiedad){
		return self.cantHorasTrabajadas()>=unaPropiedad.horasTrabajoAcceso() 		
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
	method asignarRepresentante(unaPersona){ // para asignar representante ARI 24/05
		if (integrantes.contains(unaPersona)) // para asignar representante ARI 24/05
		representante = unaPersona			// para asignar representante ARI 24/05
		
	}
}
