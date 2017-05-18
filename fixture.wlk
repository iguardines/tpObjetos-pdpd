import Vivienda.*
import Casa.*
import Departamento.*
import Persona.*
import PlanVivienda.*
import estado.*
import Familia.*


object fixture{
	
	method casa3ambientesNoLista(){
		return new Casa(10, 90, 3)
	}
	
	method dep2AmbientesAEstrenar(){
		 estado.incautarPropiedad(new Departamento(0, 100, 30))
	}
	
	method dep3AmbientesAEstrenar(){
		 estado.incautarPropiedad(new Departamento(0, 100, 45))
	}
	
	method familia2Personasy100horasDeTrabajo(){
		var casa3ambientes = self.casa3ambientesNoLista()
		var pablo = new Persona("pablo", 30, 60, electricidad) 
		var juana = new Persona("juana", 28, 40, electricidad)
	
		var gonzales = new Familia()
		estado.incautarPropiedad(casa3ambientes)
		estado.agregarFamiliaParticipante(gonzales)
		gonzales.agregarAFamilia(pablo)
		gonzales.agregarAFamilia(juana)
		pablo.trabaja(5, casa3ambientes)
		juana.trabaja(10, casa3ambientes)
		return gonzales
	}
	
	method familia3IntegrantesunoMenor(){
		var pablo = new Persona("pablo", 30, 60, electricidad) 
		var juana = new Persona("juana", 28, 40, electricidad)
		var tomas = new Persona("tomas", 8,null, null)

	
		var gonzales = new Familia()
		estado.agregarFamiliaParticipante(gonzales)
		gonzales.agregarAFamilia(pablo)
		gonzales.agregarAFamilia(juana)
		gonzales.agregarAFamilia(tomas)
		
		return gonzales
	}
	
}