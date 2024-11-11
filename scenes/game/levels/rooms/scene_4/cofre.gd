extends Node2D


@onready var sprite = $Sprite2D


func _on_area_2d_body_entered(body: Node2D) -> void:
	if body.is_in_group("Player"):
		sprite.frame = 1