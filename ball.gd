extends CharacterBody2D

func _physics_process(delta):
	var col = move_and_collide(velocity * delta)

	if col:
		var normal := col.get_normal()
		velocity = velocity.bounce(normal)
