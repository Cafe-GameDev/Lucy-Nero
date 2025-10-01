extends Resource
class_name WeaponInstanceData

# --- DADOS ---
@export var blueprint: Resource     # WeaponBlueprintData
@export var material: Resource      # MaterialData
@export var refinement_level: int = 1 # 1 = Design Padrão, 2 = Design Refinado

@export var rune_slots: int = 1
var equipped_runes: Array[Resource] # Array de RuneData

var mastery_level: int = 1
var mastery_xp: int = 0

# --------------------------
# FUNCS DE CÁLCULO
# --------------------------

# Calcula o dano final da arma com base em seus componentes e maestria
func get_final_damage() -> float:
    if not blueprint or not material: return 0.0
    
    # Dano = (Dano Base do Blueprint * Mod. do Material) + Bônus do Nível de Maestria
    var calculated_damage = blueprint.base_damage * material.damage_modifier
    calculated_damage *= (1.0 + (mastery_level - 1) * 0.05) # Ex: +5% de dano por nível
    
    # Runas poderiam adicionar mais modificadores aqui
    
    return calculated_damage

func get_final_name() -> String:
    if not blueprint or not material: return "Arma Quebrada"
    return "%s de %s" % [blueprint.weapon_name, material.name]

func get_xp_to_next_mastery_level() -> int:
	return 100 + (mastery_level - 1) * 50

func gain_mastery_xp(amount: int) -> void:
	mastery_xp += amount
	while mastery_xp >= get_xp_to_next_mastery_level():
		mastery_xp -= get_xp_to_next_mastery_level()
		mastery_level += 1
		# A notificação sobre o aumento de nível deve ser responsabilidade da UI,
		# que pode observar a mudança nesta variável.
		# print("Maestria da arma %s aumentou para o nível %d!" % [get_final_name(), mastery_level])
