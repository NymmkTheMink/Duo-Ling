extends RigidBody2D


var words: Array = ["Bonjour", "Au revoir", "D\u0233sol\u0233e", "O\u0249", "Grand", "Petite", "Vingt Cinq", "Quatorze", "Quarante", "Douze", "Fille", "Gar\u0231on", "Homme", "Femme", "Mark la carotte", "Allez les Bleus"]


func _ready() -> void:
	$Label.text = words[randi() % words.size()]
