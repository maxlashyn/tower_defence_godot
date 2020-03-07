extends Node2D


func _ready() -> void:
	$Turrets/GunTurret0.target = $Enemy
	$Turrets/GunTurret1.target = $Enemy
	$Turrets/GunTurret2.target = $Enemy