extends Control


func _input(event):
	if event.is_action_pressed("ui_select"):
		Global.next_level()
	if event.is_action_pressed("Opcje"):
		Global.sterowanie_intro()
	if event.is_action_pressed("Mechanika"):
		Global.jakwygrac()
	


func _on_Timer_timeout():# przejście z grafiki startowej do main menu
	$"Sprite".hide()
	$"Sprite2".show()
	$"Tytuł".show()
	$"Opcje".show()
	
