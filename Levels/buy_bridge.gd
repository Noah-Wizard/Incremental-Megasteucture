extends Area3D
@onready var bridge: Node3D = $".."


func _on_body_entered(body: Node3D) -> void:
	if not(body is Player):
		return
	if IncrementalsGlobalProcessing.currency1 < IncrementalsGlobalProcessing.speed_cost:
		return
	else:
		IncrementalsGlobalProcessing.currency1 -= IncrementalsGlobalProcessing.speed_cost
		bridge.scale.z += 7
		IncrementalsGlobalProcessing.speed *= 2
		IncrementalsGlobalProcessing.speed_cost *= 2
