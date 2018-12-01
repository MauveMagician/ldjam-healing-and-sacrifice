extends Position2D

onready var parent = get_parent().get_parent()

func _ready():
	update_pivot_angle()
	pass

func update_pivot_angle():
	rotation = parent.look_direction.angle()

func _process(delta):
	update_pivot_angle()