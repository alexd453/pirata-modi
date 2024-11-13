extends Area2D

func _ready():
	# Asegúrate de que el área está habilitada
	set_monitorable(true)
	set_pickable(true)

func _on_Area2D_body_entered(body):
	if body.is_in_group("player"):
		# Lógica para cuando el jugador recoja la llave
		print("Llave recogida")
		Global.llave_obtenida = true  # Puedes usar una variable global para indicar que la llave ha sido recogida
		queue_free()  # Destruye la llave (la hace desaparecer)
