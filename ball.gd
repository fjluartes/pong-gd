extends CharacterBody2D

const speed = 500.0
var direction = Vector2.ZERO
var screen_size: Vector2

func _ready() -> void:
	direction = Vector2(-1, 0.6).normalized() # move toward top-left
	screen_size = get_viewport_rect().size

func _physics_process(delta: float) -> void:
	var motion = direction * speed * delta
	var collision = move_and_collide(motion)
	
	if collision:
		direction = direction.bounce(collision.get_normal()).normalized()
