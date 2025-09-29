extends Resource
class_name CharacterData

# --- Atributos de Identidade ---
@export var name: String
@export var age: int
@export var height: float
@export var description: String

# --- Recursos de Progressão ---
@export var stat_progression: Resource   # StatProgressionData
@export var exp_table: Resource          # ExpTableData
@export var skill_tree: Resource         # SkillTreeData

# --- Recursos Conectados ---
@export var abilities: Array[Resource]   # AbilityData
@export var forms: Array[Resource]       # FormData
@export var inventory: Resource          # InventoryData

# --- Atributos de Combate (Agora gerenciados pela tabela) ---
var max_health: float
var max_mana: float
var base_attack: float
var base_defense: float

# --- Estado Atual ---
var current_health: float
var current_mana: float
var level: int = 1
var current_xp: int = 0

# --- Sinais ---
signal level_upped(character_name, new_level)
signal stats_changed

# --------------------------
# FUNCS
# --------------------------

func _init():
    # Define os status iniciais com base no nível 1 da tabela
    update_stats_for_level()
    
    # Garante que os status atuais comecem cheios
    current_health = max_health
    current_mana = max_mana

func update_stats_for_level() -> void:
    if not stat_progression:
        push_error("Recurso 'StatProgressionData' não foi definido para %s" % name)
        return

    var stats = stat_progression.get_stats_for_level(level)
    max_health = stats.get("max_health", max_health)
    max_mana = stats.get("max_mana", max_mana)
    base_attack = stats.get("base_attack", base_attack)
    base_defense = stats.get("base_defense", base_defense)
    
    stats_changed.emit()

func gain_xp(amount: int) -> void:
    current_xp += amount
    while current_xp >= get_xp_to_next_level():
        level_up()
    stats_changed.emit()

func get_xp_to_next_level() -> int:
    if exp_table:
        return exp_table.get_required_xp(level)
    return INF

func level_up() -> void:
    current_xp -= get_xp_to_next_level()
    level += 1
    
    # --- ATUALIZA OS ATRIBUTOS USANDO A TABELA ---
    update_stats_for_level()
    
    # Recupera vida e mana ao subir de nível
    current_health = max_health
    current_mana = max_mana
    
    print("%s subiu para o nível %d! Novos atributos: HP=%d, MP=%d" % [name, level, max_health, max_mana])
    level_upped.emit(name, level)

func use_ability(ability_name: String, target: Node) -> void:
    for ability in abilities:
        if ability.name == ability_name:
            ability.activate(self, target)
            return
    push_warning("%s não possui a habilidade %s" % [name, ability_name])
