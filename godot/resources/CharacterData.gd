extends Resource
class_name CharacterData

@export var name: String
@export var age: int
@export var height: float
@export var description: String
@export var abilities: Array[Resource]   # AbilityData
@export var weapons: Array[Resource]     # WeaponData
@export var forms: Array[Resource]       # FormData
@export var skill_tree: Resource         # SkillTreeData
@export var exp_table: Resource          # ExpTableData

var level: int = 1
var current_xp: int = 0

# --------------------------
# FUNCS
# --------------------------

func gain_xp(amount: int) -> void:
    current_xp += amount
    while current_xp >= get_xp_to_next_level():
        level_up()

func get_xp_to_next_level() -> int:
    if exp_table:
        return exp_table.get_required_xp(level)
    return INF

func level_up() -> void:
    current_xp -= get_xp_to_next_level()
    level += 1
    print("%s subiu para o nível %d!" % [name, level])

func use_ability(ability_name: String, target: Node) -> void:
    for ability in abilities:
        if ability.name == ability_name:
            ability.activate(self, target)
            return
    push_warning("%s não possui a habilidade %s" % [name, ability_name])
