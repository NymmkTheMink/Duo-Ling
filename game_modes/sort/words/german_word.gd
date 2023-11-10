extends RigidBody2D


var words: Array = [“Hallo”, “Verabschiedung”, “Entschuldigung”, “Wo, Groß”, “Klein”, “Fünfundzwanzig”, “Vierzehn”, “Vierzig”, “Zwölf”, “Mädchen”, “Junge”, “Mann”, “Frau”, “Mark Sie die Karotte”, “Deutschland, Deutschland”]


func _ready() -> void:
	$Label.text = words[randi() % words.size()]
