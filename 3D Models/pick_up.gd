extends Area3D
@onready var lava: Node3D = $lava
@onready var pick_up_able_collider: CollisionShape3D = $PickUpAbleCollider

signal picked_up

func _ready():
	lava.visible = false
	pick_up_able_collider.disabled = true
func _on_body_entered(body: Node3D) -> void:
	if body is Player:
		picked_up.emit()
