extends CharacterBody2D

@export var speed = 600
var screen_size: Vector2

func get_input():
	var input_direction = Input.get_axis("up2", "down2")
	velocity.y = input_direction * speed

func _ready() -> void:
	screen_size = get_viewport_rect().size

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta: float) -> void:
	position.y = clamp(position.y, 0, screen_size.y)
	
func _physics_process(_delta: float) -> void:
	get_input()
	move_and_slide()
