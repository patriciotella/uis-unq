package Model

import java.util.List

class Pais {
	@Property String nombre
	@Property List<String> caracteristicas
	@Property List<LugarDeInteres> lugaresDeInteres
	@Property List<Pais> conexiones
	
	new(String nombre, List<String> caracteristicas,
		List<LugarDeInteres> lugaresDeInteres, List<Pais> paisesConectados) {
		this.nombre = nombre
		this.caracteristicas = caracteristicas
		this.lugaresDeInteres = lugaresDeInteres
		this.conexiones = paisesConectados	
	}
}