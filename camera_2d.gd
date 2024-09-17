extends Camera2D
@onready var world: Node = $".."
@onready var player:CharacterBody2D = $"../Player"

#Esta funcion sube la camara y aumenta el score por cada pixel que sube
func _process(delta):
	var cubo_y = player.global_position.y
	var screen = get_viewport_rect()
	#pregunto si la Y del personaje se encuentra por encima del centro de la camara
	if player.global_position.y < global_position.y:
		global_position.y = cubo_y
		world.scoreInt += 1
