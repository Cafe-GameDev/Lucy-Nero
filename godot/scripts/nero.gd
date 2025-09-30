extends CharacterBody2D
class_name Nero

@export var speed: float = 250.0

# A distância que Nero tentará manter de Lucy
@export var follow_distance: float = 100.0

# O alvo que Nero deve seguir
@onready var target = get_parent().get_node("Lucy")

func _physics_process(delta: float):
	if not is_instance_valid(target):
		return

	var direction_to_target = global_position.direction_to(target.global_position)
	var distance_to_target = global_position.distance_to(target.global_position)

	# Só se move se estiver além da distância de seguimento
	if distance_to_target > follow_distance:
		velocity = direction_to_target * speed
	else:
		velocity = Vector2.ZERO
	
	move_and_slide()