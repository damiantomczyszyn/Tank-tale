extends Control


func _input(event):
	if event.is_action_pressed("ui_select"):
		Global.next_level()
	if event.is_action_pressed("howtowin"):
		Global.howto()
	if event.is_action_pressed("Reset"):
		Global.sterowanie()
	#if event.is_action_pressed("ui_select"):#inna mapa na inny przycisk


func _on_Timer_timeout():# przejście z grafiki startowej do main menu
	$"Sprite".hide()
	$"Sprite2".show()
	$Sprite2/poczekalnia.play()
	#$"Tytuł".show()
	#$"Opcje".show()
	
