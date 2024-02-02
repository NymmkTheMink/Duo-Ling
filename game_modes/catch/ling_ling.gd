extends CharacterBody2D

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _physics_process(delta):
	var horizontal_direction = Input.get_axis("left_P2","right_P2")
	velocity.x = 300 * horizontal_direction
	move_and_slide()
