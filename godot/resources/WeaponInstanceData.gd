extends Resource
class_name WeaponInstanceData

@export var blueprint: Resource     # WeaponBlueprintData
@export var material: Resource      # MaterialData
@export var refinement_level: int = 1 # 1 = Design Padrão, 2 = Design Refinado

var mastery_level: int = 1
var mastery_xp: int = 0

# Funções que calculam os stats finais da arma
func get_final_damage() -> float:
    if not blueprint or not material: return 0.0
    # Dano = (Dano Base do Blueprint * Mod. do Material) + Bônus do Nível de Maestria
    var calculated_damage = blueprint.base_damage * material.damage_modifier
    calculated_damage *= (1.0 + (mastery_level - 1) * 0.05) # Ex: +5% de dano por nível
    return calculated_damage

func get_final_name() -> String:
    return "%s de %s" % [blueprint.weapon_name, material.name]
