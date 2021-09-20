extends Node2D


# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	position = ClassicGlovar.pointer_position


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	rotation_degrees += 90 * delta
