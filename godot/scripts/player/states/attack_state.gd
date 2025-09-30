extends State
class_name AttackState

@export var idle_state: State

# Timer para a duração do ataque
@onready var timer = $Timer

func enter():
	# Para o movimento do jogador durante o ataque
	fsm.agent.velocity = Vector2.ZERO
	# Chama a função de ataque no script do jogador
	fsm.agent.perform_attack()
	# Inicia o timer quando entra no estado de ataque
	timer.start()

func _on_timer_timeout():
	# Quando o timer termina, volta para o estado Idle
	fsm.set_state(idle_state.name)
