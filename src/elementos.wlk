import plagas.*

class Hogar {

	var property nivelDeMugre = 0
	var property confort = 0

	method esBueno() {
		return (nivelDeMugre <= confort / 2)
	}

	method efecto(plaga) {
		nivelDeMugre += plaga.nivelDeDanio()
	}

}

class Huerta {

	var property capacidadDeProduccion = 0
	var property nivel = 0

	method esBueno() {
		return (capacidadDeProduccion > nivel)
	}

	method efecto(plaga) {
		capacidadDeProduccion -= (plaga.nivelDeDanio() * 0.1)
		if (plaga.transmitirEnfermedad()) {
			capacidadDeProduccion -= 10
		}
	}

}

class Mascota {

	var property nivelDeSalud = 0

	method esBueno() {
		return (nivelDeSalud > 250)
	}

	method efecto(plaga) {
		if (plaga.transmitirEnfermedad()) {
			nivelDeSalud -= plaga.nivelDeDanio()
		}
	}

}

