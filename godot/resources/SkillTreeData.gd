extends Resource
class_name SkillTreeData

@export var skills: Dictionary = {} 
# exemplo: {"Forja Avançada": {"cost": 1, "unlocked": false}}

func unlock(skill_name: String, available_points: int) -> bool:
    if not skills.has(skill_name):
        push_warning("Skill %s não existe" % skill_name)
        return false
    var skill = skills[skill_name]
    if skill["unlocked"]:
        push_warning("Skill %s já desbloqueada" % skill_name)
        return false
    if available_points >= skill["cost"]:
        skill["unlocked"] = true
        skills[skill_name] = skill
        print("Skill %s desbloqueada!" % skill_name)
        return true
    return false

func is_unlocked(skill_name: String) -> bool:
    return skills.has(skill_name) and skills[skill_name]["unlocked"]
