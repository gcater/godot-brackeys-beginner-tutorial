extends Area2D




func _on_body_entered(body:Node2D) -> void:
	print("i'm a coin")
	queue_free()