extends RigidBody2D


var words: Array = ["Bonjour", "Au revoir", "Désolée", "Où", "Grand", "Petite", "Vingt Cinq", "Quatorze", "Quarante", "Douze", "Fille", "Garçon", "Homme", "Femme", "Mark la carotte", "Allez les Bleus",]


func _ready() -> void:
	$Label.text = words[randi() % words.size()]
