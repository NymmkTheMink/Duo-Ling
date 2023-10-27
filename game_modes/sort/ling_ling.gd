extends CharacterBody2D


var current_pos: int
var pos_1: float = 240.0
var pos_2: float = 480.0
var pos_3: float = 720.0


func _ready() -> void:
	# Sets the players starting position to the middle. 
	current_pos = 2


func _physics_process(delta: float) -> void:
	if current_pos == 1:
		position.x = pos_1
	elif current_pos == 2:
		position.x = pos_2
	else:
		position.x = pos_3
