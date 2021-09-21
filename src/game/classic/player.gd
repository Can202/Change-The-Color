extends KinematicBody2D


# Declare member variables here. Examples:
# var a = 2
# var b = "text"
var move = Vector2()
var my_color = "blue"
var start_position = position
signal die

# Called when the node enters the scene tree for the first time.
func _ready():
	start_position = position
	


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if position.y < 1800:
		if move.y < 1000:
			move.y += 2300 * delta
	else:
		move.y = 0
	if Input.is_action_just_pressed("click") and move.y > -1000:
		move.y = - 800
	
	move_and_slide(move)


func _on_Area2D_area_entered(area):
	if area.is_in_group("red"):
		if my_color != "red":
			emit_signal("die")
			position = start_position
	elif area.is_in_group("yellow"):
		if my_color != "yellow":
			emit_signal("die")
			position = start_position
		
	elif area.is_in_group("blue"):
		if my_color != "blue":
			emit_signal("die")
			position = start_position
		
	elif area.is_in_group("orange"):
		if my_color != "orange":
			emit_signal("die")
			position = start_position
		
