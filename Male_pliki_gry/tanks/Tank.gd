extends KinematicBody2D

signal shoot
signal health_changed

signal destroyed
export (PackedScene) var Bullet
export (int) var speed
export (float) var rotation_speed
export (float) var gun_cooldown
export (int) var max_health

var velocity = Vector2()
var can_shoot = true
var alive = true
var health

func _ready():
	health = max_health
	emit_signal('health_changed', health * 100 / max_health)

	$GunTimer.wait_time = gun_cooldown

func control(delta):
	pass

func shoot(target = null):
	if can_shoot:
		can_shoot = false
		$GunTimer.start()
		var dir = Vector2(1, 0).rotated($Turret.global_rotation)
		emit_signal('shoot', Bullet, $Turret/Muzzle.global_position, dir,target)
		$AnimationPlayer.play('muzzle')

func _physics_process(delta):
	if not alive:
		return
	control(delta)
	move_and_slide(velocity)

func take_damage(amount):
	health -= amount
	emit_signal('health_changed', health * 100/max_health)
	if health <= 0:
		explode()
		emit_signal("destroyed")

func explode():
	queue_free()

func _on_GunTimer_timeout():
	can_shoot = true


func _on_Explosion_animation_finished():
	queue_free()
