extends Node

signal delete_ready

func _on_pick_up_picked_up() -> void:
	delete_ready.emit()
