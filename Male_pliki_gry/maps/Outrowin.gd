extends Node2D

func _input(event):
	if event.is_action_pressed("Menu"):# G
		Global.back_to_menu()

	if event.is_action_pressed("Reset"): # F
		Global.first_map()


func _on_Timer_timeout():
	$"Sprite2".show()
