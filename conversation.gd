extends Node2D

const Scene_Switcher = preload("res://Scene_Switcher.gd")
var SceneSwitcher = Scene_Switcher.new()
var current_location = SceneSwitcher.get_param("location")
# Called when the node enters the scene tree for the first time.
func _ready():
	print(current_location)
	pass

