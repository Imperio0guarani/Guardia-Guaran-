extends KinematicBody2D

export (int) var speed = 200

var velocity = Vector2()

func get_input():
	velocity = Vector2()
	if Input.is_action_pressed("ui_right"):
		velocity.x += 1
	if Input.is_action_pressed("ui_left"):
		velocity.x -= 1
	if Input.is_action_pressed("ui_down"):
		velocity.y += 1
	if Input.is_action_pressed("ui_up"):
		velocity.y -= 1
	velocity = velocity.normalized() * speed

func _physics_process(delta):
	get_input()
	velocity = move_and_slide(velocity)

onready var _animated_sprite = $AnimatedSprite

func _process(delta):
	if velocity.length() > 0:
		velocity = velocity.normalized() * speed
		$AnimatedSprite.play("run")
	else:
		$AnimatedSprite.stop()
	if velocity.length() == 0:
		$AnimatedSprite.play("quieto")
	if Input.is_action_pressed("ui_left"):
		$AnimatedSprite.flip_h = true
	if Input.is_action_pressed("ui_right"):
		$AnimatedSprite.flip_h = false
	if Input.is_action_pressed("select"):
		get_tree().change_scene("res://menu.tscn")
	
