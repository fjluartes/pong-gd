extends CharacterBody2D

@export var speed = 600
var screen_size: Vector2
var paddle_half_height: float

func get_input():
	var input_direction = Input.get_axis("up2", "down2")
	velocity.y = input_direction * speed

func _ready() -> void:
	screen_size = get_viewport_rect().size
	var shape = $Paddle2Collision.shape as RectangleShape2D
	paddle_half_height = shape.size.y / 2.0
	
func _physics_process(_delta: float) -> void:
	get_input()
	move_and_slide()
	position.y = clamp(position.y, paddle_half_height, screen_size.y - paddle_half_height)
	position.x = position.x
