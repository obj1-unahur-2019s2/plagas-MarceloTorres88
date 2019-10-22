class Plaga {

	var property poblacion = 0

	method transmitirEnfermedad() {
		return (poblacion >= 10)
	} // sino lo modifico dentro de las plagas comparten la misma la condicion
    method efecto(){
    	poblacion += (poblacion * 0.1)
    }
	method atacar(elemento) {
		self.efecto()
		elemento.efecto(self)
	}

}

class Cucarachas inherits Plaga {

	var property peso = 0
	var property nivelDeDanio = poblacion / 2

	override method transmitirEnfermedad() {
		return (super() and peso >= 10) // super te devuelve el booleano de plaga
	}
    
	override method efecto() {
		super()
		peso += 2
	}

}

class Pulgas inherits Plaga {

	var property nivelDeDanio = poblacion * 2

}

class Garrapatas inherits Pulgas {

	override method efecto() {
		poblacion += (poblacion * 0.2)
	}

}

class Mosquitos inherits Plaga {

	var property nivelDeDanio = poblacion

	override method transmitirEnfermedad() {
		return (super() and poblacion % 3 == 0) // super te devuelve el booleano de plaga
	}

}

