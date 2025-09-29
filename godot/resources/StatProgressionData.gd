extends Resource
class_name StatProgressionData

# Dicionário onde a chave é o nível e o valor são os atributos.
# Permite criar curvas de progressão não-lineares.
@export var stats_per_level: Dictionary = {
    1: {"max_health": 100, "max_mana": 50, "base_attack": 10, "base_defense": 5},
    2: {"max_health": 125, "max_mana": 55, "base_attack": 12, "base_defense": 6},
    3: {"max_health": 150, "max_mana": 62, "base_attack": 15, "base_defense": 7}
}

func get_stats_for_level(level: int) -> Dictionary:
    if stats_per_level.has(level):
        return stats_per_level[level]
    
    # Se o nível não estiver na tabela, retorna o último valor definido para evitar erros.
    push_warning("Nível %d não encontrado na tabela de progressão. Usando o último nível disponível." % level)
    var last_level = stats_per_level.keys()[-1]
    return stats_per_level[last_level]
