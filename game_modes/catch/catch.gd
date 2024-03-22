extends Node2D

var french_word = preload("res://game_modes/catch/words/FrenchWords.tscn") 
var german_word = preload("res://game_modes/catch/words/GermanWords.tscn")
var spanish_word = preload("res://game_modes/catch/words/SpanishWords.tscn")

var Words := [french_word, german_word, spanish_word]


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass


func _on_vanisher_body_entered(body):
	body.queue_free()


func _on_languagebox_ling_body_entered(body):
	body.queue_free()


func _on_languagebox_duo_body_entered(body):
	body.queue_free()


func _on_timer_timeout():
	randomize()
	var random_Words = Words[randi() % Words.size()] 
	var get_Words = random_Words.instantiate()
	randomize()
	get_Words.position = Vector2(randi() % (1920/2), 0)
	$Words.add_child(get_Words)
