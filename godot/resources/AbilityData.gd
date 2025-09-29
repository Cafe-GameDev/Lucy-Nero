extends Resource
class_name AbilityData

@export var name: String
@export var description: String
@export var mana_cost: float = 0.0

# Futuramente, podemos adicionar modificadores específicos da habilidade
# @export var damage_multiplier: float = 1.5 

# --------------------------
# FUNCS
# --------------------------

func activate(user: Resource, target: Node) -> void:
	# 1. Verificar se o usuário (personagem) tem mana suficiente
	if not user.has_enough_mana(mana_cost):
		print("%s não tem mana suficiente para usar %s." % [user.name, name])
		return

	# 2. Consumir a mana
	user.use_mana(mana_cost)

	# 3. Acessar o inventário e a arma equipada
	if not user.inventory:
		push_warning("Personagem %s não tem inventário.")
		return
	
	var weapon = user.inventory.get_equipped_weapon()
	if not weapon:
		# Habilidade pode não depender de arma, adicione essa lógica aqui
		print("%s usa a habilidade %s sem uma arma." % [user.name, name])
		# Ex: Curar a si mesmo, criar um escudo, etc.
		return

	# 4. Chamar a lógica de ataque da própria arma, passando a si mesma (a habilidade)
	# A arma então usará os dados da habilidade para modificar seu ataque.
	weapon.perform_attack(user, target, self)
