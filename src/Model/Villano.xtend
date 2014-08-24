package Model

import java.util.List

@Data class Villano {
	@Property String nombre
	@Property String sexo
	@Property List<String> seniasParticulares
	@Property List<String> hobbies

	/*new(String nombre, String sexo, List<String> seniasParticulas,
		List<String> hobbies) {
		this.nombre = nombre
		this.sexo = sexo
		this.seniasParticulares = seniasParticulas
		this.hobbies = hobbies
	}*/
}
