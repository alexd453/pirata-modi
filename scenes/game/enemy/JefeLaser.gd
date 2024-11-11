extends RayCast2D

@onready var ojo_izq = $OjoIzq
@onready var ojo_der = $OjoDer

func _on_timer_timeout() -> void:
	SwitchLaser()
	if is_colliding():
		var colision = get_collider()
		if colision.is_in_group("player"):
			colision.get_child(0).hit(10)

func SwitchLaser():
	ojo_izq.visible = true
	ojo_der.visible = true
	await get_tree().create_timer(0.5).timeout
	ojo_izq.visible = false
	ojo_der.visible = false
