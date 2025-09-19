extends Area2D




func _on_body_entered(body:Node2D) -> void:
    print("i'm a coin")
    set_deferred("monitoring", false)   # stop more body_entered calls this frame
    call_deferred("queue_free")         # free AFTER the signal finishes
