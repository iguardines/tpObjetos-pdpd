import Vivienda.*
import Casa.*
import Departamento.*
import Persona.*
import Habilidad.*
import estado.*
import Familia.*


object fixture{
	
	method casa3ambientesNoLista(){
		return new Casa(10, 90, 3)
	}
	
	method dep2AmbientesAEstrenar(){
		 estado.incautarPropiedad(new Departamento(100, 0, 30))
	}
	
	method dep3AmbientesAEstrenar(){
		 estado.incautarPropiedad(new Departamento( 100,0, 45))
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
	
	method familia2Personas100horas() {
		var pablo = new Persona("pablo", 30, 60, electricidad) var juana =
		new Persona("juana", 28, 40, electricidad) var gonzales = new Familia()
		gonzales.agregarAFamilia(pablo)
		gonzales.agregarAFamilia(juana)
		gonzales.asignarRepresentante(juana)
		return gonzales
	}
	
	
	method familia3IntegrantesunoMenor(){
		var pablo = new Persona("pablo", 30, 60, electricidad) 
		var juana = new Persona("juana", 28, 40, electricidad)
		var tomas = new Persona("tomas", 8, 0, sinHabilidad)

	
		var gonzales = new Familia()
		estado.agregarFamiliaParticipante(gonzales)
		gonzales.agregarAFamilia(pablo)
		gonzales.agregarAFamilia(juana)
		gonzales.agregarAFamilia(tomas)
		
		return gonzales
	}
	
	method personaMenorDeEdad11(){
		return new Persona("pedro", 11, null, sinHabilidad) 
	}
	
	method jubilado(){
		return new Persona("joaquin", 67, 60, sinHabilidad) 
	}
	
	method electricista(){
		return new Persona("manuel", 41, 60, electricidad) 
	}
	
	method decorador(){
		return new Persona("ana", 35, 60, decorador) 
	}
	
	method desordenado(){
		return new Persona("juan", 35, 60, desordenado) 
	}
	
	method empleado(){
		return new Persona("agustin", 35, 60, sinHabilidad) 
	}
}