extends Resource
class_name WeaponBlueprintData

@export var weapon_name: String # Ex: "Katana", "Clava"
@export var weapon_type: String # Ex: "Lâmina de uma mão", "Arma de Impacto"
@export var base_damage: float = 10.0
@export var base_weight: float = 5.0
# Poderia ter um array de materiais compatíveis
