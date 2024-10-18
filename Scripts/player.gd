extends CharacterBody2D

const speed = 100
var current_direction = "none"

func _physics_process(_delta):
	player_movement(_delta)

func player_movement(_delta):
	
	if Input.is_action_pressed("move_up"):
		current_direction = "up"
		player_animation(1)
		velocity.y = -speed
	elif Input.is_action_pressed("move_down"):
		current_direction = "down"
		player_animation(1)
		velocity.y = speed
	else:
		velocity.y = 0
	
	if Input.is_action_pressed("move_left"):
		current_direction = "left"
		player_animation(1)
		velocity.x = -speed
	elif Input.is_action_pressed("move_right"):
		current_direction = "right"
		player_animation(1)
		velocity.x = speed
	else:
		velocity.x = 0
		
	if velocity.x == 0 and velocity.y == 0:
		player_animation(0)
		
	move_and_slide()

func player_animation(movement):
	
	var direction = current_direction
	var animation = $AnimatedSprite2D
	
	if direction == "right":
		animation.flip_h = false
	elif direction == "left":
		animation.flip_h = true
		
	if movement == 1:
		animation.play("run")
	else:
		animation.play("idle")
