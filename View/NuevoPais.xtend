import org.uqbar.arena.windows.MainWindow
import org.uqbar.arena.widgets.Panel
import org.uqbar.arena.layout.VerticalLayout
import org.uqbar.arena.widgets.TextBox
import org.uqbar.arena.widgets.Button
import main.java.Pais
import org.uqbar.arena.widgets.Label
import org.uqbar.arena.widgets.tables.Table
import org.uqbar.arena.widgets.tables.Column
import java.awt.Color
import org.uqbar.arena.layout.HorizontalLayout
import main.java.EditorDeCaracteristicasDePais
import org.uqbar.arena.widgets.List

class NuevoPaisWindow extends MainWindow<Pais> {

	new() {
		super(new Pais)
	}

	override createContents(Panel mainPanel) {
		this.setTitle("Mapamundi - Nuevo Pais")
		val editorPanel = new Panel(mainPanel)
		mainPanel.setLayout(new VerticalLayout)

		val nombrePanel = new Panel(editorPanel)
		nombrePanel.layout = new HorizontalLayout
		new Label(nombrePanel).setText("Nombre:")
		new TextBox(nombrePanel) => [
			bindValueToProperty("nombre") 
			width = 150
		]

		val caracteristicasPanel = new Panel(editorPanel)
		caracteristicasPanel.layout = new HorizontalLayout
		new Label(caracteristicasPanel).setText("Caracteristicas             ")
		new Button(caracteristicasPanel) => [
			caption = "Editar caracteristicas"
			onClick [ | new EditarCaracteristicasDePaisWindow(this, new EditorDeCaracteristicasDePais(this.modelObject)).open ]
		]


		val caracteristicas = new Panel(mainPanel)
		caracteristicas.layout = new HorizontalLayout
		new Label(caracteristicas).setText("Caracteristicas")
		new List(mainPanel) => [
			width = 280
			heigth = 150
			bindItemsToProperty("caracteristicas")
		]
		
		val conexionesPanel = new Panel(mainPanel)
		conexionesPanel.layout = new HorizontalLayout
		new Label(conexionesPanel).setText("Conexiones                             ")
		new Button(conexionesPanel) => [
			caption = "Editar conexiones"
		//			onClick [ | this.modelObject.convertir ]
		]

		var tablaConexiones = new Table(mainPanel)
		new Column(tablaConexiones).setTitle("Conexiones")

		val lugaresPanel = new Panel(mainPanel)
		lugaresPanel.layout = new HorizontalLayout
		new Label(lugaresPanel).setText("Lugares de interes")
		new Button(lugaresPanel) => [
			caption = "Editar lugares de interes"
		//			onClick [ | this.modelObject.convertir ]
		]

		var tablaLugares = new Table(mainPanel)
		new Column(tablaLugares).setTitle("Lugares de interes")

		val buttonPanel = new Panel(mainPanel)
		buttonPanel.layout = new HorizontalLayout
		var aceptarButton = new Button(buttonPanel) => [
			caption = "Aceptar"
		//			onClick [ | this.modelObject.convertir ]
		]
		aceptarButton.setBackground(Color::lightGray)
	}

	def static void main(String[] args) {
		new NuevoPaisWindow().startApplication
	}

}
