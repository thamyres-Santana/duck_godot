extends CharacterBody2D

var grav = 50
var speed = 200


func  _process(delta):
	if !is_on_floor(): # se o jogador não estiver no chão que a força da gravidade puxe para baixo
		velocity.y += grav 
		
	elif Input.is_action_pressed("ui_right"):
		velocity.x = speed
		$Sprite2D.flip_h = false 
		
	elif Input.is_action_pressed("ui_left"):
		velocity.x = - speed
		$Sprite2D.flip_h = true
	else: 
		velocity.x = 0 
		
	if is_on_floor() and Input.is_action_just_pressed("ui_up"):
		velocity.y -= 800
		
	move_and_slide()
