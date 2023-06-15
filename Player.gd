extends KinematicBody2D

var direction = Vector2()
var speed = 3 
var fireBall= preload("res://Scenes/Fireball.tscn")
 
func _ready():
	pass # Replace with function body.



func _process(delta):
	if Input.is_key_pressed(KEY_RIGHT):
		   direction.x = speed
	elif Input.is_key_pressed(KEY_LEFT):
		   direction.x = -speed
	else:
		   direction.x = 0
		   
	if Input.is_key_pressed(KEY_UP):
		   direction.y = -speed
	elif Input.is_key_pressed(KEY_DOWN):
		   direction.y = speed
	else:
		   direction.y = 0
	
	if direction.x == 0 and direction.y == 0:
			#get_child(0).animation = "idle"
			$AnimatedSprite.play("idle")
	else:
			#get_child(0).animation = "walk"
			$AnimatedSprite.play("walk")
	
	if self.position.x < get_global_mouse_position().x:
		#get_child(0).flip_h = false
		$AnimatedSprite.flip_h = false
	else:
		#get_child(0).flip_h = true
		$AnimatedSprite.flip_h = true
	
	if Input.is_action_just_pressed("Shoot"):
		var newFireBall = fireBall.instance()
		newFireBall.position = self.position
		get_parent().add_child(newFireBall)
		
	move_and_collide(direction)
pass
