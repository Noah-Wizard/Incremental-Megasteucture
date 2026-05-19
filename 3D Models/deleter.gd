extends Node




func _on_pick_up_processing_delete_ready() -> void:
	get_parent().queue_free()
