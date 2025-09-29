extends Resource
class_name InventoryData

# Dicionário para itens empilháveis: { "MaterialData.resource_path": quantidade }
@export var materials: Dictionary = {}

# Array para equipamentos únicos, cada um com seu próprio nível e XP
@export var equipment: Array[Resource] # Array de WeaponInstanceData

# Poderíamos adicionar outros arrays/dicionários para consumíveis, projetos, etc.
