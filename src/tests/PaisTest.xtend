package tests

import java.util.LinkedList
import org.junit.Test

import static org.junit.Assert.*
import Model.Pais
import Model.LugarDeInteres
import java.util.HashMap

class PaisTest {
	
	@Test
	def test() {
		var caracteristicas = new HashMap<String, String>()
		var lugaresDeInteres = new LinkedList<LugarDeInteres>()
		var conexiones = new LinkedList<Pais>()
		
		caracteristicas.put("Bandera", "Celeste y blanca")
		caracteristicas.put("Moneda", "Peso")
		caracteristicas.put("Casa de gobierno", "Rosada")
		caracteristicas.put("Comida tipica", "Empanadas")
		
		var pais = new Pais("Argentina", caracteristicas, lugaresDeInteres, conexiones)
	}
}