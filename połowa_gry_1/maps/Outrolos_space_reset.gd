extends Node2D
func _input(event):
	if event.is_action_pressed("Menu"):
		Global.menu()
	if event.is_action_pressed("Reset"):
		Global.mapajeden()



func _on_Timer_timeout():
	$tryagain.show()
