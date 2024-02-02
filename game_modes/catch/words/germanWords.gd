extends RigidBody2D

var words: Array = ["Hallo", "Verabschiedung", "Entschuldigung", "Wo", "Gro\u00DF", "Klein", "F\u00FCnfundzwanzig", "Vierzehn", "Vierzig", "Zw\u00F6lf", "M\u00E4dchen", "Junge", "Mann", "Frau", "Mark Sie die Karotte", "Deutschland, Deutschland",]


func _ready() -> void:
	$Label.text = words[randi() % words.size()]
