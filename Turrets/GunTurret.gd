extends KinematicBody2D

signal Fire(direction)

var target: KinematicBody2D

func _process(delta: float) -> void:
	look_at_target(target)
	fire(target)
		
func look_at_target(target) -> void:
	if target != null:
		$Gun.look_at(target.global_position)
		$Gun.rotation_degrees += 90
		$FireLine.look_at(target.global_position)
		$FireLine.rotation_degrees -= 90

func fire(target: KinematicBody2D) -> void:
	if target != null:
		var direction = (target.global_postion - global_position).normalize()
		emit_signal("Fire", direction)