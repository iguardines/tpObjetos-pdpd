class Familia{
	var integrantes=[]
	
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
}