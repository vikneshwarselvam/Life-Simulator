extends RichTextLabel


# Declare member variables here. Examples:
# var a = 2
# var b = "text"

var dialogue = ["Hi hello this dialogue - 1",
				"dialogue - 2",
				"dialogue - 3",
				"dialogue - 4",
				"dialogue - 5",
				"dialogue - 6"]
var page = 0
#onready var dialog = get_node(".")
# Called when the node enters the scene tree for the first time.
func _ready():
	set_bbcode(dialogue[page])
	set_visible_characters(0)
	set_process_input(true)
	#dialog.size = 64
	
func _input(event):
	if event.is_action_pressed("click"):
		if get_visible_characters() > get_total_character_count():
			if page < dialogue.size() - 1:
				page += 1
				set_bbcode(dialogue[page])
				set_visible_characters(0)
			else:
				get_tree().change_scene("res://MainScene.tscn")
		else:
			set_visible_characters(get_total_character_count())

func _on_Timer_timeout():
	set_visible_characters(get_visible_characters() + 1)
