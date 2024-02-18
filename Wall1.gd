extends CharacterBody2D
var direction = Vector2.ZERO


const SPEED = 0.1
const JUMP_VELOCITY = -400.0

# Get the gravity from the project settings to be synced with RigidBody nodes.
var gravity = ProjectSettings.get_setting("physics/2d/default_gravity")


func _moveWallUp():
	position.y -= 10
