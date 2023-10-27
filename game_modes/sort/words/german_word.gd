extends RigidBody2D


var words: Array = []


func _ready() -> void:
	$Label.text = words[randi() % words.size()]
