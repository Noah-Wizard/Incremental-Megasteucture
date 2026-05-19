extends Area3D

signal picked_up

func _on_body_entered(body: Node3D) -> void:
	if body is Player:
		picked_up.emit()
