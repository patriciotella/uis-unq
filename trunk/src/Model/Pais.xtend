package Model

import java.util.List
import java.util.Map

class Pais {
	@Property String nombre
	@Property Map<String, String> caracteristicas
	@Property List<LugarDeInteres> lugaresDeInteres
	@Property List<Pais> conexiones
	
	new(String nombre, Map<String, String> caracteristicas,
		List<LugarDeInteres> lugaresDeInteres, List<Pais> paisesConectados) {
		this.nombre = nombre
		this.caracteristicas = caracteristicas
		this.lugaresDeInteres = lugaresDeInteres
		this.conexiones = paisesConectados	
	}
}