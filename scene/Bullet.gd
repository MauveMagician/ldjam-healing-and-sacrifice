extends Area2D

export (int) var speed = 0
var velocity = Vector2(0,0)

# class member variables go here, for example:
# var a = 2
# var b = "textvar"

func _ready():
	pass

func _process(delta):
	position += velocity * delta

func _on_Bullet_body_entered(body):
	if(body.has_method("is_enemy")):
		return
	if body.has_method("take_damage"):
		body.take_damage()
		queue_free()