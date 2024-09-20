extends AnimatedSprite2D


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	var randRange = randi_range(0, 15)
	position += Vector2(randRange, randRange)
	await get_tree().create_timer(1).timeout
	queue_free()
