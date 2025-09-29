extends Resource
class_name AbilityData

@export var name: String
@export var description: String
@export var mana_cost: float = 0.0

# --------------------------
# FUNCS
# --------------------------

func activate(user: Resource, target: Node) -> void:
    # Aqui cada habilidade pode ter lógica própria
    print("%s usa %s em %s" % [user.name, name, str(target)])
