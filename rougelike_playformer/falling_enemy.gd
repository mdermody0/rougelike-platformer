extends CharacterBody2D

var range = 250
var min_range_x
var max_range_x

var falling = false
var fall_speed = 700

func _ready() -> void:
	min_range_x = position.x - range / 2
	max_range_x = position.x + range / 2

@onready var player = get_node("/root/Game/Player") # change path to your player

func _process(delta):

	if !falling:
		if player.position.x > min_range_x and player.position.x < max_range_x:
			falling = true
	
	if falling:
		position.y += fall_speed * delta

func _update() -> void:
	pass
