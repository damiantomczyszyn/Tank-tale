extends Node2D

func _input(event):
	if event.is_action_pressed("Menu"):
		Global.menu()




func _on_Timer1_timeout():
	$Node2D.show()
	$TileMap3.show()

func _on_Timer2_timeout():
	$Node2D.free()
	$TileMap2.show()
	$EnemyTank.show()
	

func _on_Timer3_timeout():
	$EnemyTank.free()
	$missletank.show()
