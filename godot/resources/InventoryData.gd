extends Resource
class_name InventoryData

# --- SINAIS ---
signal equipment_changed

# --- DADOS ---
# Dicionário para itens empilháveis: { "MaterialData.resource_path": quantidade }
@export var materials: Dictionary = {}

# Array para todos os equipamentos que o personagem possui
@export var equipment: Array[Resource] # Array de WeaponInstanceData

# A arma que está atualmente em uso
@export var equipped_weapon: Resource # WeaponInstanceData

# --------------------------
# FUNCS
# --------------------------

func add_equipment(new_equipment: Resource):
	if not equipment.has(new_equipment):
		equipment.append(new_equipment)
		equipment_changed.emit()

func equip_weapon(weapon_to_equip: Resource):
	if not equipment.has(weapon_to_equip):
		push_error("Tentou equipar uma arma que não está no inventário.")
		return

	if equipped_weapon != weapon_to_equip:
		equipped_weapon = weapon_to_equip
		print("%s equipada." % equipped_weapon.get_final_name())
		equipment_changed.emit()

func get_equipped_weapon() -> Resource:
	return equipped_weapon
