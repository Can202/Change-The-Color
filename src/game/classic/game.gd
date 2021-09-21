extends Node2D


# Declare member variables here. Examples:
# var a = 2
# var b = "text"
export (PackedScene) var obj

var Camera_start_position
var Pointer_start_position


# Called when the node enters the scene tree for the first time.
func _ready():
	Camera_start_position = $Camera2D.position
	Pointer_start_position = $pointer.position
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	ClassicGlovar.pointer_position = $pointer.position
	if $Camera2D.position.y + 30 > $KinematicBody2D.position.y:
		$Camera2D.position.y -= 200 * delta
		$pointer.position.y -= 200 * delta
	if ClassicGlovar.appear_obj:
		_appear_obj()
		ClassicGlovar.appear_obj = false
	
func _appear_obj():
	var obj_instance = obj.instance()
	add_child(obj_instance)


func _on_KinematicBody2D_die():
	$Camera2D.position = Camera_start_position
	$pointer.position = Pointer_start_position
