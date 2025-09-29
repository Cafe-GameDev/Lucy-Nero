extends Resource
class_name LootTableData

# Array de itens que podem ser dropados.
# Cada item é um dicionário com:
# "item": Resource (ex: MaterialData, WeaponBlueprintData)
# "quantity_min": int
# "quantity_max": int
# "weight": float (peso para a chance de drop)
@export var possible_drops: Array[Dictionary] = []

# --------------------------
# FUNCS
# --------------------------

# Esta função seleciona um ou mais itens da tabela com base nos pesos.
func get_loot() -> Array[Dictionary]:
    var loot_drops = []
    var total_weight = 0.0
    for drop in possible_drops:
        total_weight += drop.get("weight", 0.0)

    if total_weight <= 0.0:
        return loot_drops

    # Simula um "dado" para ver qual item cai
    var random_roll = randf() * total_weight
    var current_weight = 0.0

    for drop in possible_drops:
        current_weight += drop.get("weight", 0.0)
        if random_roll <= current_weight:
            var quantity = randi_range(drop.get("quantity_min", 1), drop.get("quantity_max", 1))
            loot_drops.append({"item": drop["item"], "quantity": quantity})
            # Para este exemplo, vamos retornar apenas um item por chamada.
            # Poderia ser modificado para dropar múltiplos itens.
            return loot_drops
            
    return loot_drops
