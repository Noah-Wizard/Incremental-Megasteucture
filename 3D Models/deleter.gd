extends Node
class_name Deleter

func _on_pick_up_processing_delete_ready() -> void:
	get_parent().queue_free()
