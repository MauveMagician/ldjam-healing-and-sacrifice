extends KinematicBody2D

# class member variables go here, for example:
# var a = 2
# var b = "textvar"
var FOLLOWING = false
onready var player = get_node("../PlayerCharacter")
onready var red = get_node("../RCharacter")
onready var blue = get_node("../BCharacter")
onready var green = get_node("../GCharacter")


func _ready():
	pass

func _process(delta):
	if abs(abs(self.position.x) - abs(self.player.position.x)) > 50 or abs(abs(self.position.y) - abs(self.player.position.y)) > 50:
		move_and_collide(0.05*(self.player.position-self.position))
		
