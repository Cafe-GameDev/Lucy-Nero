extends Resource
class_name SkillTreeData

@export var skills: Array[SkillData] = []

func unlock(skill_id: String, available_points: int) -> bool:
    for skill in skills:
        if skill.id == skill_id:
            if skill.unlocked:
                push_warning("Skill %s (ID: %s) já desbloqueada" % [skill.skill_name, skill_id])
                return false
            if available_points >= skill.cost:
                skill.unlocked = true
                print("Skill '%s' desbloqueada!" % skill.skill_name)
                return true
            else:
                print("Pontos insuficientes para desbloquear '%s'" % skill.skill_name)
                return false
    
    push_warning("Skill com ID '%s' não encontrada" % skill_id)
    return false

func is_unlocked(skill_id: String) -> bool:
    for skill in skills:
        if skill.id == skill_id:
            return skill.unlocked
    return false

func get_skill(skill_id: String) -> SkillData:
    for skill in skills:
        if skill.id == skill_id:
            return skill
    return null
