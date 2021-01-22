extends Node

#var = slow_terrain [0, 10 ,20 ,30 ,7 ,8 ,17 , 18]
var current_level = 0
var levels = ["res://UI/Title_scene.tscn","res://maps/Map01.tscn","res://maps/Map02.tscn","res://maps/intro.tscn" ,"res://maps/Jakwygrać.tscn" ,"res://maps/Outrowin.tscn","res://maps/Outrolos_space_reset.tscn" ]
var wygrana = 5
var przegrana = 6
var jakwygrac = 4
var intro = 3

#jeśli wygra gratulacje i podsumowanie


#jeśli przegra wyświetl powrót do menu i spróbuj ponownie



func restart():
	current_level = 0
	get_tree().change_scene(levels[current_level])
#signal giveparameters
func next_level():
	#if current_level>1:
		#emit_signal("giveparameters")
		#emit_signal("giveparameters",speed,rotation_speed,gun_cooldown,max_health,Bullet)#stare parametry na nowej mapie	
	
	current_level+=1
	if current_level < levels.size():
		get_tree().change_scene(levels[current_level])
	else:
			restart()

func wygrana():
	current_level=wygrana
	get_tree().change_scene(levels[current_level])
	
func menu():
	current_level=0
	get_tree().change_scene(levels[current_level])
	
func przegrana():
	current_level=przegrana
	get_tree().change_scene(levels[current_level])

func sterowanie_intro():
	current_level=intro
	get_tree().change_scene(levels[current_level])
	
func jakwygrac():
	current_level=jakwygrac
	get_tree().change_scene(levels[current_level])

func mapajeden():
	current_level=1
	get_tree().change_scene(levels[current_level])

func _on_Map01_przegrana():
	pass
