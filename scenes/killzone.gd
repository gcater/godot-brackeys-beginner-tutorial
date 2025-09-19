extends Area2D

@onready var timer = $Timer 

# Called when the node enters the scene tree for the first time.

func _on_body_entered(body:Node2D) -> void:
	print("you died")
	timer.start()

func _on_timer_timeout() -> void:
	get_tree().reload_current_scene()