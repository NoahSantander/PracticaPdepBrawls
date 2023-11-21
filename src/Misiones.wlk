import Personajes.*

class Mision {
	var modo
	const dificultadMision
	
	method puedeSerSuperada(personaje, dificultad)
	method copasEnJuego(dificultad)
	method repartirCopas(personaje) = self.puedeSerSuperada(personaje, dificultadMision) * self.copasEnJuego(dificultadMision)
	method realizar(personaje) = if(personaje.cantCopas() > 10) self.repartirCopas(personaje)
								else throw new DomainException(message = "Mision no puede comenzar")
}

class Idividual inherits Mision {
	method laSupera(personaje, dificultad) = personaje.tieneEstrategia() || personaje.destreza() > dificultad
	override method puedeSerSuperada(personaje, dificultad) = if(self.laSupera(personaje, dificultad)) 1 else -1
	override method copasEnJuego(dificultad) = 2 * dificultad
}

class PorEquipos inherits Mision {
	const participantes
	
	override method realizar(persanaje) = participantes.add(personaje)	
}

