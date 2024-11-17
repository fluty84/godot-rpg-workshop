extends CharacterBody2D


const SPEED = 150.0
@onready var player = $".."
@onready var animation = $AnimatedSprite2D

func _physics_process(delta: float) -> void:
	if Input.is_action_pressed("ui_up"):
		player.position.y -= SPEED * delta
		animation.play("up")
	elif Input.is_action_pressed("ui_down"):
		player.position.y += SPEED * delta
		animation.play("down")
	elif Input.is_action_pressed("ui_left"):
		player.position.x -= SPEED * delta
		animation.play("left")
	elif Input.is_action_pressed("ui_right"):
		player.position.x += SPEED * delta
		animation.play("right")
	else:
		animation.stop()
	move_and_slide()
