extends StaticBody2D
onready var player = get_parent().get_node("Player")

signal zaliczony


	


func _on_Power_up_body_entered(body):
	if body == player:
		
		emit_signal("zaliczony")
		queue_free()
		
		
	
