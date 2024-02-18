extends CharacterBody2D
@onready var anim = $AnimatedSprite2D
const SPEED = 75.0
var past_direction = Vector2.ZERO

func _physics_process(_delta: float) -> void:
	var direction = Input.get_vector("left", "right", "up", "down")
	
	if direction.x == 0 and direction.y == 0:
		pass
	else:
		past_direction = direction
	print(direction)
	
	velocity = direction * SPEED

	print(velocity)
	move_and_slide()
	if direction.x == 1:
		anim.play("walk_right")
	elif direction.x == -1:
		anim.play("walk_left")
	elif direction.y == -1:
		anim.play("walk_up")
	elif direction.y == 1:
		anim.play("walk_down")	
	elif round(direction.x) == 1 and round(direction.y) == -1:
		anim.play("walk_upright")
	elif round(direction.x) == -1 and round(direction.y) == -1:
		anim.play("walk_upleft")
	elif round(direction.x) == 1 and round(direction.y) == 1:
		anim.play("walk_downright")
	elif round(direction.x) == -1 and round(direction.y) == 1:
		anim.play("walk_downleft")
	
	
	
	if direction == Vector2.ZERO:
		if past_direction.x == -1 and past_direction.y == 1:
			anim.play("idle_upleft")
		elif past_direction.x == 1 and past_direction.y == 1:
			anim.play("idle_upright")
		elif past_direction.x == -1 and past_direction.y == -1:
			anim.play("idle_downleft")	
		elif past_direction.x == -1 and past_direction.y == 1:
			anim.play("idle_upright")
		elif past_direction.x == 1:
			anim.play("idle_right")
		elif past_direction.x == -1:
			anim.play("idle_left")
		elif past_direction.y == 1:
			anim.play("idle_down")
		elif past_direction.y == -1:
			anim.play("idle_up")
	
		
	
		
	
