extends State
class_name IdleState

@export var move_state: State
@export var attack_state: State

func physics_update(_delta: float):
	# Se o jogador pressionar qualquer tecla de movimento, transita para o estado Move
	if Input.get_vector("move_left", "move_right", "move_up", "move_down") != Vector2.ZERO:
		fsm.set_state(move_state.name)
		return
	
	# Se o jogador pressionar o botão de ataque, transita para o estado Attack
	if Input.is_action_just_pressed("attack_quick"):
		fsm.set_state(attack_state.name)
		return
