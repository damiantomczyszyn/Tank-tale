extends StaticBody2D
onready var player = get_parent().get_node("Player")

signal nextmap
export var punkty=4#ilość punktów kontrolnych wymagana do wygrania ma być 4
var czyspecjal=true
	

#signal twojczas

func _on_Power_up_body_entered(body):
	if czyspecjal:
		if punkty==0:
			if body == player:
				#emit_signal ("twojczas")
				Global.win_game()#wygrana
				#emit_signal("nextmap")
		
		
	


func _on_Punkt_kontrolny_zaliczony():
	punkty -= 1


func _on_Specjalnykontrolny_zaliczonyspecjal():
	czyspecjal=true
