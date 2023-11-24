extends Node2D

var player_1_points: int = 0
var player_2_points: int = 0


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	$EndPanel.visible = false
	get_tree().paused = false


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	$PointsP1/Label.text = str(player_1_points)
	$PointsP2/Label.text = str(player_2_points)
	$TimerPanel/Label.text = str(int($Timer.time_left))


func _on_spanish_box_p_1_body_entered(body: Node2D) -> void:
	if "spanish" in body.name.to_lower():
		player_1_points += 1
	else: 
		$Duolingo/PenaltyTimer.start()
		$Duolingo.process_mode = Node.PROCESS_MODE_DISABLED
		if player_1_points != 0:
			player_1_points -= 1
	body.queue_free()


func _on_french_box_p_1_body_entered(body: Node2D) -> void:
	if "french" in body.name.to_lower():
		player_1_points += 1
	else: 
		$Duolingo/PenaltyTimer.start()
		$Duolingo.process_mode = Node.PROCESS_MODE_DISABLED
		if player_1_points != 0:
			player_1_points -= 1
	body.queue_free()


func _on_german_box_p_1_body_entered(body: Node2D) -> void:
	if "german" in body.name.to_lower():
		player_1_points += 1
	else: 
		$Duolingo/PenaltyTimer.start()
		$Duolingo.process_mode = Node.PROCESS_MODE_DISABLED
		if player_1_points != 0:
			player_1_points -= 1
	body.queue_free()


func _on_german_box_p_2_body_entered(body: Node2D) -> void:
	if "german" in body.name.to_lower():
		player_2_points += 1
	else: 
		$LingLing/PenaltyTimer.start()
		$LingLing.process_mode = Node.PROCESS_MODE_DISABLED
		if player_2_points !=0:
			player_2_points -= 1
	body.queue_free()


func _on_french_box_p_2_body_entered(body: Node2D) -> void:
	if "french" in body.name.to_lower():
		player_2_points += 1
	else: 
		$LingLing/PenaltyTimer.start()
		$LingLing.process_mode = Node.PROCESS_MODE_DISABLED
		if player_2_points !=0:
			player_2_points -= 1
	body.queue_free()


func _on_spanish_box_p_2_body_entered(body: Node2D) -> void:
	if "spanish" in body.name.to_lower():
		player_2_points += 1
	else: 
		$LingLing/PenaltyTimer.start()
		$LingLing.process_mode = Node.PROCESS_MODE_DISABLED
		if player_2_points !=0:
			player_2_points -= 1
	body.queue_free()


func _on_timer_timeout() -> void:
	get_tree().paused = true
	$EndPanel.visible = true
	$EndPanel/P1Points.text = str(player_1_points)
	$EndPanel/P2Points.text = str(player_2_points)
	if player_1_points > player_2_points:
		$EndPanel/winner.text = "P1"
	if player_1_points == player_2_points:
		$EndPanel/Tie.visible = true
		$EndPanel/win.visible = false
		$EndPanel/winner.visible = false
	else:
		$EndPanel/winner.text = "P2"


func _on_replay_button_pressed() -> void:
	get_tree().reload_current_scene()
