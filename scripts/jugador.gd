extends CharacterBody2D
var v = 150

func _ready() -> void:
	position = Vector2(50,600)

func _process(delta: float) -> void:
	var direction=Vector2.ZERO
	direction = Input.get_vector("mou_esquerra", "mou_dreta", "mou_amunt", "mou_avall")
	velocity = direction * v
	move_and_slide()



func _on_area_2d_body_entered(body: Node2D) -> void:
	if body == self:
		get_node("/Root/Node2D/Area2D/Victoria").text = "YOU WIN!"
