extends KinematicBody2D


# Declare member variables here. Examples:
var speed = 10


# Called when the node enters the scene tree for the first time.
func _ready():
	
	look_at(get_global_mouse_position())
	
 # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	move_and_collide(Vector2(1, 0).rotated(rotation)*speed )

