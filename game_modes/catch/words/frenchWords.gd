extends RigidBody2D


var words: Array = ["Bonjour", "Au revoir", "D\u00E9sol\u00E9e", "O\u00F9", "Grand", "Petite", "Vingt Cinq", "Quatorze", "Quarante", "Douze", "Fille", "Gar\u00E7on", "Homme", "Femme", "Mark la carotte", "Allez les Bleus"]


func _ready() -> void:
	$Label.text = words[randi() % words.size()]


func _process(delta: float) -> void:
	position.x = (128 - $Label.size.x )/2
