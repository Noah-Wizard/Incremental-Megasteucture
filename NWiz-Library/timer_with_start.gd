extends Timer
class_name TimerWithStart

@export var start_time : float

func _ready() -> void:
	timeout.connect(_on_timeout)
	if autostart:
		start(start_time)

	
func _on_timeout():
	start(wait_time)
