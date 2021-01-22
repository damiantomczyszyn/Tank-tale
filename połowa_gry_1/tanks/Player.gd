extends "res://tanks/Tank.gd"

func control(delta):
	$Turret.look_at(get_global_mouse_position())
	var rot_dir = 0
	if Input.is_action_pressed('ui_right'):
		rot_dir += 1
	if Input.is_action_pressed('ui_left'):
		rot_dir -= 1
	rotation += rotation_speed * rot_dir * delta
	velocity = Vector2()
	if Input.is_action_pressed('ui_up'):
		
		velocity = Vector2(speed, 0).rotated(rotation)
	if Input.is_action_pressed('ui_down'):
		velocity = Vector2(-speed/2, 0).rotated(rotation)
	if Input.is_action_just_pressed("Mysz"):
		shoot()
		#print("strzał")


func _on_HUD_change_speed():
	speed+=15





func _on_HUD_change_speed_reload():
	gun_cooldown -= 0.08


func _on_HUD_change_speed_rotation():
	rotation_speed +=0.1


func _on_heal_heal(how_many):# zwiększ hp gracza o 30
	if health>70:
		health=100
	else: health+=30
	emit_signal('health_changed', health * 100 / max_health)







signal position
#func _physics_process(delta):
	#emit_signal("position",position)


func _on_Timer_timeout():
	emit_signal("position",position)


func _on_HUD_change_hp():
	pass # Replace with function body.


func _on_HUD_change_dmg():
	pass # Replace with function body.




func _on_Area2D_body_entered(body):
	if body==get_parent().get_node("Player"):
		if $AudioStreamPlayer2D.playing==true:
			$AudioStreamPlayer2D.stop()#jeśli gra to niech przestanie
		$AudioStreamPlayer2D3.play()


func _on_Area2D_body_exited(body):#może usunę
	if body==get_parent().get_node("Player"):
		if $AudioStreamPlayer2D3.playing==true:
			$AudioStreamPlayer2D3.stop()#jeśli gra to niech przestanie
		$AudioStreamPlayer2D.play()


func _on_Area2D2_body_entered(body):
	if body==get_parent().get_node("Player"):
		if $AudioStreamPlayer2D.playing==true:
			$AudioStreamPlayer2D.stop()#jeśli gra to niech przestanie
		$AudioStreamPlayer2D4.play()
		
func _on_Area2D2_body_exited(body):
	if body==get_parent().get_node("Player"):
		if $AudioStreamPlayer2D4.playing==true:
			$AudioStreamPlayer2D4.stop()#jeśli gra to niech przestanie
		$AudioStreamPlayer2D.play()


func _on_Area2D3_body_entered(body):
	if body==get_parent().get_node("Player"):
		if $AudioStreamPlayer2D.playing==true:
			$AudioStreamPlayer2D.stop()#jeśli gra to niech przestanie
		$AudioStreamPlayer2D2.play()



func _on_Area2D3_body_exited(body):
	if body==get_parent().get_node("Player"):
		if $AudioStreamPlayer2D2.playing==true:
			$AudioStreamPlayer2D2.stop()#jeśli gra to niech przestanie
		$AudioStreamPlayer2D.play()

