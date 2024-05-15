extends State
class_name PlayerMove

@export var player : CharacterBody2D
@export var move_speed := 50.0

var move_direction : Vector2
var move_time : float

func move_towards():
	move_direction = get_viewport().get_mouse_position().normalized()
	move_time = 0.1

func Enter():
	move_towards()
	
func Update(delta: float):
	if move_time > 0:
		move_time -= delta
	else:
		move_towards()
	
func Physics_Update(delta: float):
	if player:
		player.velocity = move_direction * move_speed
