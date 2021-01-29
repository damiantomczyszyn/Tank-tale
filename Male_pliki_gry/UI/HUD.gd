extends CanvasLayer


var to_next_lewel=4
var expo=0
var rozdane=0
export var lewel = 0

signal change_speed
signal change_dmg
signal change_speed_reload
signal change_speed_ammo
signal change_speed_rotation
signal change_hp


func new_lewel():
	if to_next_lewel<expo:
		to_next_lewel+=5
		expo-=to_next_lewel
		lewel += 1
		


func _on_Player_health_changed(y):
	$Margin/Container/HealthBar.value = y




func _on_EnemyTank_destroyed():
	expo+=5
	if to_next_lewel<expo:
		to_next_lewel+=5
		expo-=to_next_lewel
		lewel += 1
		$a/b/Speed.show()
		#$a/b/DMG.show()
		$a/b/Reload.show()
		#$a/b/Amo_fly_speed.show()
		$a/b/Tank_rotation.show()
		$AudioStreamPlayer.play()
		#$a/b/Tank_hp.show()


func hide_skills():
	$a/b/Speed.hide()
	$a/b/DMG.hide()
	$a/b/Reload.hide()
	$a/b/Amo_fly_speed.hide()
	$a/b/Tank_rotation.hide()
	$a/b/Tank_hp.hide()
#ustaw max wartości
#jeśli max wartość to nie można już więcej ulepszyć i wyświetl max i nie można kliknąć


func _on_Reload_pressed():
	rozdane+=1
	emit_signal("change_speed_reload")
	print("rozdano reload")
	if rozdane==lewel:
		hide_skills()


func _on_Amo_fly_speed_pressed():
	rozdane+=1
	emit_signal("change_speed_ammo")
	print("rozdano speedammo")
	if rozdane==lewel:
		hide_skills()


func _on_Tank_rotation_pressed():
	rozdane+=1
	emit_signal("change_speed_rotation")
	print("rozdano speedrotation")
	if rozdane==lewel:
		hide_skills()


func _on_Tank_hp_pressed():
	rozdane+=1
	emit_signal("change_hp")
	print("rozdano HP")
	if rozdane==lewel:
		hide_skills()



func _on_dmg():
	rozdane+=1
	emit_signal("change_dmg")
	print("rozdano DMG")
	if rozdane==lewel:
		hide_skills()

func _on_Speed_pressed():

	rozdane+=1
	emit_signal("change_speed")
	print("rozdano szybkość")
	if rozdane==lewel:
		#$a/b/Speed.hide()
		hide_skills()


func _on_EnemyDzialko_destroyed():
	expo+=2
	if to_next_lewel<expo:
		to_next_lewel+=5
		expo-=to_next_lewel
		lewel += 1
		$a/b/Speed.show()
		#$a/b/DMG.show()
		$a/b/Reload.show()
		#$a/b/Amo_fly_speed.show()
		$a/b/Tank_rotation.show()
		#$a/b/Tank_hp.show()






func _on_Player_position(pos):#wyświetlanie globalnej pozycji na mapie

	$pozycja.text="Pozycja: "+str(int(pos.x/100-2))+"  "+str(int(pos.y/100-2))


func _on_MissleTank_destroyed():
	expo+=8
	if to_next_lewel<expo:
		to_next_lewel+=5
		expo-=to_next_lewel
		lewel += 1
		$a/b/Speed.show()
		#$a/b/DMG.show()
		$a/b/Reload.show()
		#$a/b/Amo_fly_speed.show()
		$a/b/Tank_rotation.show()
		$AudioStreamPlayer.play()
		#$a/b/Tank_hp.show()




func _on_Destroyer_destroyed():
	expo+=15
	if to_next_lewel<expo:
		to_next_lewel+=5
		expo-=to_next_lewel
		lewel += 1
		$a/b/Speed.show()
		#$a/b/DMG.show()
		$a/b/Reload.show()
		#$a/b/Amo_fly_speed.show()
		$a/b/Tank_rotation.show()
		$AudioStreamPlayer.play()
		#$a/b/Tank_hp.show()

var sekundy = 0
var minuty = 0
var godziny = 0
func _on_Timer_timeout():
	sekundy=sekundy+1
	$czas.text="Czas: "+str(godziny)+":"+str(minuty)+":"+str(sekundy)
	if sekundy==60:
		sekundy = 0 
		minuty=minuty+1
		if minuty==60:
			minuty=0
			godziny=godziny+1



