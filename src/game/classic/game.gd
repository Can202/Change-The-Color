extends Node2D


# Declare member variables here. Examples:
# var a = 2
# var b = "text"
export (PackedScene) var obj

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	ClassicGlovar.pointer_position = $pointer.position
	if $Camera2D.position.y + 30 > $KinematicBody2D.position.y:
		$Camera2D.position.y -= 300 * delta
		$pointer.position.y -= 300 * delta
	if Input.is_action_just_pressed("ui_down"):
		_appear_obj()
	
func _appear_obj():
	var obj_instance = obj.instance()
	add_child(obj_instance)
