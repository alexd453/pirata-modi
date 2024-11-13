extends Node2D

@onready var label = $Label
@onready var timer = $Timer 
@onready var total_time_seconds : int = 15
# Called when the node enters the scene tree for the first time.
func _ready():
	total_time_seconds = 15  # Inicia desde 15 segundos
	$Timer.wait_time = 1  # Establece el tiempo de espera a 1 segundo
	$Timer.start()  # Inicia el temporizador


	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass


func _on_timer_timeout() -> void:
	total_time_seconds -= 1  # Resta 1 segundo cada vez que se llama la función
	var m = int(total_time_seconds / 60)
	var s = total_time_seconds - m * 60
	label.text = '%02d:%02d' % [m, s]

	# Verifica si el tiempo ha llegado a 0
	if total_time_seconds <= 0:
		$Timer.stop()  # Detiene el temporizador
		label.text = "00:00"  # Opcionalmente, muestra 00:00 cuando llega a 0
