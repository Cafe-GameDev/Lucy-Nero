extends State
class_name MoveState

@export var idle_state: State
@export var attack_state: State

@export var speed: float = 300.0

func physics_update(_delta: float):
	# Pega o input do jogador
	var input_vector = Input.get_vector("move_left", "move_right", "move_up", "move_down")
	
	# Se não há input, volta para o estado Idle
	if input_vector == Vector2.ZERO:
		fsm.set_state(idle_state.name)
		return

	# Move o personagem
	fsm.agent.velocity = input_vector.normalized() * speed
	fsm.agent.move_and_slide()

	# Permite atacar enquanto se move
	if Input.is_action_just_pressed("attack_quick"):
		fsm.set_state(attack_state.name)
		return
