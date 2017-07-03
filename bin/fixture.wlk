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