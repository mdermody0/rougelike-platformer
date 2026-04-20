extends Node2D
@export var enemyScene : PackedScene

@export var enemies : Node2D

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	spawns()

func spawns() -> void:
	var delete = 8
	var count
	while delete != 0 :
		count = enemies.get_child_count()
		print(count,"count")
		var removeEnemy = randi_range(0, count -1)
		print(removeEnemy,"count")
		#var remove_child = enemies.get_child(removeEnemy)
		enemies.get_child(removeEnemy).queue_free()
		delete-=1

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta: float) -> void:
	pass
