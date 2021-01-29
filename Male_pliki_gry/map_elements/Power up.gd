extends StaticBody2D
onready var player = get_parent().get_node("Player")
var how_many = 20
signal powerup


	


func _on_Power_up_body_entered(body):
	if body == player:
		emit_signal("powerup",how_many)
		queue_free()
		
	
