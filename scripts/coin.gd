extends Area2D

@onready var game_manager = %GameManager


func _on_body_entered(body:Node2D) -> void:
    game_manager.add_point()
    set_deferred("monitoring", false)   # stop more body_entered calls this frame
    call_deferred("queue_free")         # free AFTER the signal finishes
