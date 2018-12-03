extends Control

func _ready():
	$CanvasLayer/NinePatchRect/Lifebar.value = 3
	pass

func update_life(new_value):
	$NinePatchRect/Lifebar.value = new_value

func _on_Player_life_changed(new_value):
	update_life(new_value)