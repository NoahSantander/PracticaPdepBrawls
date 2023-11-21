import Misiones.*

class Personaje {
	var cantCopas
	method cantCopas() = cantCopas
	
	method tieneEstrategia()
	method destreza()
	
	method realizarMision(mision) = cantCopas + mision.realizar(self)
}

class Arquero inherits Personaje {
	const rango
	const agilidad
	
	override method destreza() = agilidad * rango
	override method tieneEstrategia() = rango > 100
}

class Guerrera inherits Personaje {
	const tieneEstrategia
	const fuerza
	
	override method tieneEstrategia() = tieneEstrategia
	override method destreza() = 1.5 * fuerza
}

class Ballestero inherits Arquero {
	override method destreza() = 2 * super()
}