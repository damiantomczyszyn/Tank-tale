extends Node2D

func _input(event):
	if event.is_action_pressed("Menu"):
		Global.back_to_menu()
