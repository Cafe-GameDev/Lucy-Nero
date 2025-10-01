extends Resource
class_name EnemyData

@export var name: String
@export var scene: PackedScene # A cena 3D do inimigo

# --- RECURSOS DE PROGRESSÃO E HABILIDADES ---
@export var stat_progression: Resource     # StatProgressionData para este tipo de inimigo
@export var abilities: Array[Resource]     # AbilityData que o inimigo pode usar
@export var loot_table: Resource           # LootTableData

# --------------------------
# FUNCS
# --------------------------

# Esta função seria chamada pela instância do inimigo no jogo
func get_stats_for_level(level: int) -> Dictionary:
    if not stat_progression:
        push_error("Recurso 'StatProgressionData' não foi definido para o inimigo %s" % name)
        return {}
    
    return stat_progression.get_stats_for_level(level)