extends StaticBody2D


onready var player = get_parent().get_node("Player")
signal zaliczony


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.



func _on_Power_up_body_entered(body):
	if body==player:
		emit_signal("zaliczony")
		queue_free()
