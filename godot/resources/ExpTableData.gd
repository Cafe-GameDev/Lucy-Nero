extends Resource
class_name ExpTableData

@export var xp_table: Array[int] = [100, 200, 400, 800, 1600] 
# XP necessário para níveis 1, 2, 3...

func get_required_xp(level: int) -> int:
    if level - 1 < xp_table.size():
        return xp_table[level - 1]
    # Fórmula escalável depois que acaba a tabela
    return xp_table[-1] + (level - xp_table.size()) * 200
