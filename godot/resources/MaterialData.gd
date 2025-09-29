extends Resource
class_name MaterialData

@export var name: String
@export_multiline var description: String
@export var icon: Texture2D

# Modificadores baseados no Aço (Aço = 1.0)
@export var damage_modifier: float = 1.0  # Mithril poderia ter 1.5
@export var weight_modifier: float = 1.0  # Mithril poderia ter 0.7
@export var defense_modifier: float = 1.0 # Para armaduras
