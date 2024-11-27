extends CharacterBody2D

@export var speed = 400;
@export var upInput = '';
@export var downInput = '';
	
func _physics_process(delta):
	if Input.is_action_just_pressed(upInput):
		velocity.y = -speed
	if Input.is_action_just_pressed(downInput):
		velocity.y = speed

	move_and_slide()
