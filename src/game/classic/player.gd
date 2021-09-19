extends KinematicBody2D


# Declare member variables here. Examples:
# var a = 2
# var b = "text"
var move = Vector2()


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if position.y < 1800:
		if move.y < 1000:
			move.y += 2300 * delta
	else:
		move.y = 0
	if Input.is_action_just_pressed("click") and move.y > -20:
		move.y = - 1000
	
	move_and_slide(move)
