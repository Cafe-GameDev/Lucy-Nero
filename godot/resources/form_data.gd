extends Resource
class_name FormData

@export var name: String
@export var description: String
@export var abilities: Array[Resource]   # AbilityData

func transform(user: Resource) -> void:
    print("%s assume a forma %s" % [user.name, name])

func use_form_ability(ability_name: String, user: Resource, target: Node) -> void:
    for ability in abilities:
        if ability.name == ability_name:
            ability.activate(user, target)
            return
    push_warning("A forma %s não possui a habilidade %s" % [name, ability_name])
