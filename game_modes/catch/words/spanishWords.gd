extends RigidBody2D


var words: Array = ["Hola", "Adios", "Lo siento", "D\u00f3nde", "Grande", "Peque\u00f1a", "Veinticinco", "Catorce", "Cuarenta", "Doce", "Chica", "Chico", "Hombre", "Mujer", "Mark la zanahoria", "Que viva Espa\u00f1a"]


func _ready() -> void:
	$Label.text = words[randi() % words.size()]


func _process(delta: float) -> void:
	position.x = (128 - $Label.size.x )/2
