import Vivienda.*
import Familia.*

class Departamento inherits Vivienda {
	var superficieTotal

	constructor(_horasTrabajoAcceso, _horasTrabajoRestante, _superficieTotal) =
		super(_horasTrabajoAcceso,_horasTrabajoRestante){
		superficieTotal = _superficieTotal	
	}

	override method soportaFamilia(cantFamiliares) {
		return self.capacidadIntengrantes() == cantFamiliares ||
		self.capacidadIntengrantes() == ( cantFamiliares + 1 )
	}

	method capacidadIntengrantes() {
		return self.superficieTotal() / 15
	}

	method superficieTotal() {
		return superficieTotal
	}
}