extends Node2D
func _input(event):
	if event.is_action_pressed("Menu"):#G
		Global.back_to_menu()
	if event.is_action_pressed("Reset"):#F
		Global.first_map()



func _on_Timer_timeout():
	$tryagain.show()


func _on_Button_pressed():#again
	Global.first_map()


func _on_Buttonmenu_pressed():
	Global.back_to_menu()
