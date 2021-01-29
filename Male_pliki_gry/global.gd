extends Node

#var = slow_terrain [0, 10 ,20 ,30 ,7 ,8 ,17 , 18]
var current_level = 0
var levels = ["res://UI/Title_scene.tscn","res://maps/Map01.tscn","res://maps/Map02.tscn","res://maps/Outrowin.tscn","res://maps/Outrolos_space_reset.tscn","res://maps/Jakwygrać.tscn", "res://maps/intro.tscn"]#poziomy i odpowiednio numery od 1

func restart(): 
	current_level = 0
	get_tree().change_scene(levels[current_level])


func next_level():	
	current_level+=1
	if current_level < levels.size():
		get_tree().change_scene(levels[current_level])
	else:
			restart()
			
func win_game():
	current_level = 3 #numer odpowiedniej mapy
	get_tree().change_scene(levels[current_level])
func lose_game():
	current_level = 4 #numer odpowiedniej mapy
	get_tree().change_scene(levels[current_level])
func back_to_menu():
	current_level = 0 #numer odpowiedniej mapy
	get_tree().change_scene(levels[current_level])
func first_map():
	current_level = 1 #numer odpowiedniej mapy
	get_tree().change_scene(levels[current_level])
func howto():
	current_level = 5 #numer odpowiedniej mapy
	get_tree().change_scene(levels[current_level])
func sterowanie():
	current_level = 6 #numer odpowiedniej mapy
	get_tree().change_scene(levels[current_level])


