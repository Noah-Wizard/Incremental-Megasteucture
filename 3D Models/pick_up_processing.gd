extends Node
class_name PickUpProcessing
@onready var animation_player: AnimationPlayer = $"../AnimationPlayer"


func _on_pick_up_picked_up() -> void:
	IncrementalsGlobalProcessing.currency1 +=1
	animation_player.call_deferred("play", "get_lava")
