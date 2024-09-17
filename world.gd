extends Node
@onready var score: Label = $ParallaxBackground/Score
@onready var scoreInt: int = 0

func _process(delta: float) -> void:
	score.text = "Score: "+ str(scoreInt)
	
func reinciarJuego():
	get_tree().reload_current_scene()
