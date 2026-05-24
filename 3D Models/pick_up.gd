extends Area3D
@onready var lava: Node3D = $lava
@onready var pick_up_able_collider: CollisionShape3D = $PickUpAbleCollider
@export var has_bucket = false
@onready var lava_bucket: Node3D = $"lava bucket"
@onready var animation_player: AnimationPlayer = $AnimationPlayer
@onready var buy_me: Area3D = $BuyMe



signal picked_up

func _ready():
	lava.visible = false
	pick_up_able_collider.disabled = true
	if not has_bucket:
		lava_bucket.visible = false
	else:
		buy_me.queue_free()
		animation_player.play("get_lava")
func _on_body_entered(body: Node3D) -> void:
	if body is Player:
		picked_up.emit()

func _process(_delta: float) -> void:
	animation_player.speed_scale = IncrementalsGlobalProcessing.speed
