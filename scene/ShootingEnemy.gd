extends "res://Enemy.gd"

func _ready():
	speed = Vector2(10,10)
	pass

func _process(delta):
	._process(delta)

func is_enemy():
	return true;

func _on_ShootingTimer_timeout():
	var bullet = preload("res://scene/BasicBullet.tscn").instance()
	var player = get_node("../PlayerTree/PlayerCharacter")
	get_parent().add_child(bullet)
	bullet.position = self.position
	bullet.velocity = Vector2(800, 800) * (player.position - bullet.position).normalized()