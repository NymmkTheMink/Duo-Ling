extends RigidBody2D


var words: Array = [“Hola”, “Adios”, “Lo siento”, “Dónde”, “Grande”, “Pequeña”, “Veinticinco”, “Catorce”, “Cuarenta”, “Doce”, “Chica”, “Chico”, “Hombre”, “Mujer”, “Mark la zanahoria”, “Que viva España”]


func _ready() -> void:
	$Label.text = words[randi() % words.size()]
