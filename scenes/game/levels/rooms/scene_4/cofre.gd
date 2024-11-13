extends Node2D
var cofre
@onready var sprite = $Sprite2D
@onready var monedas_cofre = $Node2D_monedas_cofre  # Asegúrate de que el path sea correcto
@onready var llave = $Key  # Ajusta el path según el nombre del nodo de la llave

func _ready():
    Global.cofre = self
    #  monedas comiencen ocultas
    if monedas_cofre:
        monedas_cofre.visible = false

func _on_area_2d_body_entered(body: Node2D) -> void:
    # Aquí puedes agregar la lógica para detectar la colisión si lo necesitas
    pass
func Abrir():
     sprite.frame = 1  # Cambia el sprite del cofre a "abierto"
     if llave:
        llave.visible = true  # Muestra la llave
