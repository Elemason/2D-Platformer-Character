extends Node

onready var SM = get_parent()
onready var player = get_node("../..")

func _ready():
	yield(player, "ready")

func start():
	player.set_animation("Attacking")
	
func physics_process(_delta):
	if Input.is_action_pressed("attack"):
		SM.get_node("Attacking").check_Attacking()


