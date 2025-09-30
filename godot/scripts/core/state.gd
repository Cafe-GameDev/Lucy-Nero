extends Node
class_name State

# Referência à FSM que gerencia este estado
var fsm: FSM

# Função chamada quando a FSM entra neste estado
func enter():
	pass

# Função chamada quando a FSM sai deste estado
func exit():
	pass

# Função para atualizações de lógica (executada no _process)
func logic_update(_delta: float):
	pass

# Função para atualizações de física (executada no _physics_process)
func physics_update(_delta: float):
	pass
