extends CharacterBody2D

const SPEED = 400.0

func get_input():
	var input_direction = Input.get_axis("up2", "down2")
	velocity.y = input_direction * SPEED

func _physics_process(_delta: float) -> void:
	get_input()
	move_and_slide()
