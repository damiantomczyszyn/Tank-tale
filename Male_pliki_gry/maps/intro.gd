extends Node2D


func _input(event):
	if event.is_action_pressed("Menu"):
		Global.back_to_menu()



func _on_Timer_timeout():
	$"Label".hide()
	$"EnemyTank".show()


func _on_timer2_timeout():
	$"EnemyTank".hide()
	$"missletank".show()


func _on_dzialka_timeout():
	$"missletank".hide()
	$"Blueturret".show()
