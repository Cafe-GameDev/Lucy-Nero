extends Resource
class_name WeaponData

@export var name: String
@export var type: String
@export var description: String
@export var runes: Array[String]

func attack(user: Resource, target: Node) -> void:
    print("%s ataca %s com %s" % [user.name, str(target), name])
