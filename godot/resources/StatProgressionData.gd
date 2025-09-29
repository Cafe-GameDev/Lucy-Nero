extends Resource
class_name StatProgressionData

# Agora a tabela pode incluir atributos para inimigos, como xp_reward e resistências.
@export var stats_per_level: Dictionary = {
    # Exemplo para a Lucy
    1: {"max_health": 100, "max_mana": 50, "base_attack": 10, "base_defense": 5},
    2: {"max_health": 125, "max_mana": 55, "base_attack": 12, "base_defense": 6},
    
    # Exemplo para um inimigo "Goblin"
    5: {"max_health": 80, "max_mana": 10, "base_attack": 15, "base_defense": 5, "xp_reward": 15, "resistances": {"fire": 0.0, "ice": -0.5}},
    10: {"max_health": 150, "max_mana": 20, "base_attack": 25, "base_defense": 10, "xp_reward": 40, "resistances": {"fire": 0.1, "ice": -0.4}}
}

func get_stats_for_level(level: int) -> Dictionary:
    if stats_per_level.has(level):
        return stats_per_level[level]
    
    push_warning("Nível %d não encontrado na tabela de progressão. Usando o último nível disponível." % level)
    # Pega o maior nível na tabela que seja menor ou igual ao nível solicitado
    var closest_level = 0
    for key in stats_per_level.keys():
        if key <= level and key > closest_level:
            closest_level = key
            
    if closest_level > 0:
        return stats_per_level[closest_level]
        
    # Se nenhum nível for encontrado, retorna o primeiro da tabela
    return stats_per_level.values()[0]