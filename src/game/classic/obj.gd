extends Node2D


# Declare member variables here. Examples:
# var a = 2
# var b = "text"
var nomore = false

var start = true
var temp = 0

# Called when the node enters the scene tree for the first time.
func _ready():
	position = ClassicGlovar.pointer_position
	


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	temp += 1
	if temp > 6:
		start = false


func _on_Area2D_body_entered(body):
	if body.is_in_group("player"):
		ClassicGlovar.appear_obj = true


func _on_Area2D_area_entered(area):
	if area.is_in_group("obj") and start == true:
		queue_free()


func _on_VisibilityNotifier2D_screen_exited():
	ClassicGlovar.appear_obj = true
