extends Area3D

signal picked_up

func _on_body_entered(_body: Node3D) -> void:
	#if body == player:
	picked_up.emit()
