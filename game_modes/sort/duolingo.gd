extends CharacterBody2D

var current_pos: int
var pos_1: float = 240.0
var pos_2: float = 480.0
var pos_3: float = 720.0

@onready var spanish_word = preload("res://game_modes/sort/words/spanish_word.tscn")
@onready var french_word = preload("res://game_modes/sort/words/french_word.tscn")
@onready var german_word = preload("res://game_modes/sort/words/german_word.tscn")

var words: Array = [preload("res://game_modes/sort/words/spanish_word.tscn"),
	preload("res://game_modes/sort/words/french_word.tscn"), 
	preload("res://game_modes/sort/words/german_word.tscn"), ]

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
	if Input.is_action_just_pressed("left_P1"):
		if current_pos != 1:
			current_pos -= 1
	elif Input.is_action_just_pressed("right_P1"):
		if current_pos != 3:
			current_pos += 1
	
	# spawns new word
	if $Words.get_child_count() == 0:
		randomize()
		var random_word = words[randi() % words.size()]
		var get_word = random_word.instantiate()
		randomize()
		get_word.position = Vector2(randi() % 360, randi() % 1)
		$Words.add_child(get_word)
	
	
