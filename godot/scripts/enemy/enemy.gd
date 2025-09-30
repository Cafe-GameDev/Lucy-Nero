extends CharacterBody2D
class_name Enemy

@export var speed: float = 150.0
@export var health: float = 50.0

var player = null

@onready var detection_area = $DetectionArea

func _ready():
	# A área de detecção precisa ser adicionada na cena
	if not detection_area:
		push_error("Nó DetectionArea não encontrado no inimigo!")
		return

func _physics_process(delta: float):
	if player:
		var direction = global_position.direction_to(player.global_position)
		velocity = direction * speed
		move_and_slide()
	else:
		velocity = Vector2.ZERO

func take_damage(amount: float):
	health -= amount
	print("Inimigo sofreu %d de dano, vida restante: %d" % [amount, health])
	if health <= 0:
		die()

func die():
	print("Inimigo derrotado!")
	queue_free()

func _on_detection_area_body_entered(body):
	if body.is_in_group("player"):
		player = body
		print("Jogador detectado!")

func _on_detection_area_body_exited(body):
	if body == player:
		player = null
		print("Jogador perdido.")
