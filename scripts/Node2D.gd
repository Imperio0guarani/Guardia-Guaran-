extends Node2D

var op_act = true #op true es player 1, op es 2 player

func _ready():
	pass 

func _physics_process(delta):
	if Input.is_action_just_pressed("select"):
		op_act = !op_act
	if (op_act):
			$GUI/cursos.rect_position = $GUI/pos1.position
	else:
			$GUI/cursos.rect_position = $GUI/pos2.position
