# resources/EnemyData.gd
extends Resource
class_name EnemyData

@export var name: String
@export var scene: PackedScene # A cena 3D do inimigo
@export var max_health: float = 50.0
@export var damage: float = 5.0
@export var speed: float = 3.0
@export var xp_reward: int = 10
@export var abilities: Array[Resource] # AbilityData que o inimigo pode usar
@export var loot_table: Resource     # LootTableData
