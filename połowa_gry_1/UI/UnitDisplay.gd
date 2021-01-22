extends Node2D

func _process(delta):
	global_rotation = 0

func _health_changed(z):
	$HealthBar.value = z
