package main.java

import java.util.List

class Mapamundi {
	@Property List<Pais> paises
	
	new() {
		this.paises = #[]
	}
	
	new(List<Pais> paises) {
		this.paises = paises
	}
	
}