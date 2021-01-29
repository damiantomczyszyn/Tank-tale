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



func _on_HUD_change_speed(): # umiejętność prędkość
	speed+=30





func _on_HUD_change_speed_reload(): # umiejętność gun_cooldown
	gun_cooldown -= 0.2


func _on_HUD_change_speed_rotation():  #umiejętność rotation speed
	rotation_speed +=0.3


func _on_heal_heal(how_many):# zwiększ hp gracza o 30 # leczenie po podniesieniu przedmiotu
	if health>70:
		health=100
	else: health+=30
	emit_signal('health_changed', health * 100 / max_health)







signal position
#func _physics_process(delta):
	#emit_signal("position",position)


func _on_Timer_timeout():
	emit_signal("position",position)






# funkcje do muzyki


func _on_AudioStreamPlayer2D_finished():
	$AudioStreamPlayer2D.play()
