extends State
class_name AttackState

@export var idle_state: State

# Timer para a duração do ataque
@onready var timer = $Timer

func enter():
	# Inicia o timer quando entra no estado de ataque
	timer.start()
	# A lógica de ativar a hitbox do ataque viria aqui
	print("Player atacando!")

func _on_timer_timeout():
	# Quando o timer termina, volta para o estado Idle
	fsm.set_state(idle_state.name)
