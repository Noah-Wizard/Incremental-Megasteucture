extends Node
@export var timer: Timer

func _on_timer_timeout() -> void:
	IncrementalsGlobalProcessing.currency1 +=1
	print (IncrementalsGlobalProcessing.currency1)

func _on_pick_up_picked_up() -> void:
	reparent(IncrementalsGlobalProcessing)
	timer.start()
