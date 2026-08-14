extends CharacterBody2D

@export var speed = 600

func get_input():
	var input_direction = Input.get_axis("up1", "down1")
	velocity.y = input_direction * speed

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta: float) -> void:
	pass
	
func _physics_process(delta: float) -> void:
	get_input()
	move_and_slide()
