extends Node
class_name FSM

# Sinal emitido quando o estado é alterado
signal state_changed(new_state_name)

# O estado atual da máquina
var current_state: State
# Um dicionário para armazenar todos os estados possíveis
var states: Dictionary = {}
# Referência ao "dono" desta FSM (ex: o nó do Player ou do Inimigo)
@export var owner: Node

func _ready():
	# Adiciona todos os nós filhos que são do tipo State ao dicionário de estados
	for child in get_children():
		if child is State:
			states[child.name.to_lower()] = child
			child.fsm = self # Dá ao estado uma referência de volta para a FSM

func set_state(state_name: String):
	# Converte o nome para minúsculas para consistência
	state_name = state_name.to_lower()

	# Verifica se o estado de destino existe
	if not states.has(state_name):
		push_warning("FSM não contém o estado: %s" % state_name)
		return

	var new_state = states[state_name]

	# Se já estamos nesse estado, não faz nada
	if current_state == new_state:
		return

	# Sai do estado atual, se houver um
	if current_state:
		current_state.exit()

	# Define o novo estado
	current_state = new_state
	# Entra no novo estado
	current_state.enter()
	
	# Emite o sinal para que outros nós (como a UI) possam reagir
	emit_signal("state_changed", current_state.name)

func _physics_process(delta: float):
	# Delega o processamento de física para o estado atual
	if current_state:
		current_state.physics_update(delta)

func _process(delta: float):
	# Delega o processamento de lógica para o estado atual
	if current_state:
		current_state.logic_update(delta)
