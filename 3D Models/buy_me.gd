extends Area3D
@onready var lava_bucket: Node3D = $"../lava bucket"
@onready var animation_player: AnimationPlayer = $"../AnimationPlayer"


func _on_body_entered(body: Node3D) -> void:
	
	if not(body is Player):
		return
	if IncrementalsGlobalProcessing.currency1 < IncrementalsGlobalProcessing.buy_cost_1:
		return
	lava_bucket.visible = true
	animation_player.play("get_lava")
	IncrementalsGlobalProcessing.currency1 -= IncrementalsGlobalProcessing.buy_cost_1
	IncrementalsGlobalProcessing.buy_cost_1 *= 1.5
	queue_free()
	
