extends Node2D

const Scene_Switcher = preload("res://Scene_Switcher.gd")
var SceneSwitcher = Scene_Switcher.new()

var save = preload("res://save_variables.gd").new()
# Declare member variables here. Examples:
# var a = 2
# var b = "text"
onready var button = get_node("world/TextureButton")
onready var player = get_node("Player")
# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
func _input(event):
	if button.is_pressed():
		save.current_player_location = player.position
		save.print()
		get_tree().change_scene("res://conversation.tscn")
		#get_tree().get_node().add_child("")
		#SceneSwitcher.change_scene("res://conversation.gd", {"location":player.position})

