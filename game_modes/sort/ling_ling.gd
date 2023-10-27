extends CharacterBody2D


var current_pos: int
var pos_1: float = 1200.0
var pos_2: float = 1440.0
var pos_3: float = 1680.0


func _ready() -> void:
	# Sets the players starting position to the middle. 
	current_pos = 2


func _physics_process(delta: float) -> void:
	# sets player position to current position
	if current_pos == 1:
		position.x = pos_1
	elif current_pos == 2:
		position.x = pos_2
	else:
		position.x = pos_3
	
	# changes the position when the player moves
	if Input.is_action_just_pressed("left_P2"):
		if current_pos != 1:
			current_pos -= 1
	elif Input.is_action_just_pressed("right_P2"):
		if current_pos != 3:
			current_pos += 1
