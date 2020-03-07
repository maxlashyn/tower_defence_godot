extends KinematicBody2D

var directions: Array = [0, 1, -1]

func _physics_process(delta: float) -> void:
	
	move_and_slide(Vector2(directions[randi() % 3], directions[randi() % 3]) * 300)
