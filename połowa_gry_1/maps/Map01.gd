extends Node2D

func _ready():
	#set_camera_limits()
	Input.set_custom_mouse_cursor(load("res://assets/UI/crossair_white.png"), Input.CURSOR_ARROW, Vector2())
	#$Ground/rock56.free()#usuwa nie chowa! jak nie usunieszz to nie widać ,ale blokuje dalej

#func set_camera_limits():
	#var map_limits = $Ground.get_used_rect()
	#var map_cellsize = $Ground.cell_size
	#$Player/Camera2D.limit_left = map_limits.position.x * map_cellsize.x
	#$Player/Camera2D.limit_right = map_limits.end.x * map_cellsize.x
	#$Player/Camera2D.limit_top = map_limits.position.y * map_cellsize.y
	#$Player/Camera2D.limit_bottom = map_limits.end.y * map_cellsize.y
	



func _on_Tank_shoot(bullet, _position, _direction, _target = null):
	var b = bullet.instance()
	#print("strzał z mapy")
	#get_tree().get_root().add_child(b)
	add_child(b)
	b.start(_position, _direction, _target)

func _input(event):# nowa mapa po spacji do usunięcia
#	if event.is_action_pressed("ui_select"):
#		Global.next_level()
	if event.is_action_pressed("ui_end"):
		Global.menu()


#nowa mapa po najechaniu do bazy



func _on_bazanextmap_nextmap():
	
	Global.next_level()







signal przegrana

func _on_Player_destroyed():
	Global.przegrana()
