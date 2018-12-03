extends KinematicBody2D

var motion = Vector2()
var speed = Vector2(300,300)
onready var player = get_node("../PlayerTree/PlayerCharacter")

func _ready():
	pass

func is_enemy():
	return true;

func _process(delta):
	motion = speed * (player.global_position - self.global_position).normalized()
	motion = move_and_slide(motion)
