extends Node2D

onready var office = get_node("StaticBody2D/Building-5/Button")
onready var office_popup = get_node("StaticBody2D/Building-5/office-popup")
onready var enter_office = get_node("StaticBody2D/Building-5/office-popup/Button")
# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.

func _input(event):
	if office.is_pressed():
		print("Pressed")
		office_popup.visible = !office_popup.visible
	if enter_office.is_pressed():
		print("Button_pressed")
		get_tree().change_scene("res://office.tscn")
