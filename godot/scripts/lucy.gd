# Este script deve ser anexado a um nó CharacterBody2D na cena do jogador.
# Ele atua como o "cérebro" do personagem, combinando os dados do recurso
# CharacterData com a lógica de execução que acontece na cena do jogo.

extends CharacterBody2D

# --- SINAIS ---
# Emitido quando o personagem sobe de nível.
signal level_upped(new_level)
# Emitido quando os status (vida, mana, etc.) mudam.
signal stats_changed
# Emitido quando um ataque é realizado, para que a cena possa instanciar efeitos.
signal attack_dealt(damage, target_node)

# --- DADOS ---
# Atribua o recurso CharacterData (ex: Lucy.tres) a este campo no inspetor do Godot.
@export var character_data: CharacterData

# --- COMPONENTES ---
@onready var fsm: FSM = $FSM
@onready var hitbox: Area2D = $Hitbox

# --------------------------
# MÉTODOS DO GODOT
# --------------------------

func _ready():
	# Garante que os dados do personagem foram atribuídos
	if not character_data:
		push_error("O recurso CharacterData não foi atribuído ao nó Player.")
		queue_free()
		return
	
	# Define as ações de input que serão usadas para o movimento
	# Isso é feito via código para garantir que as ações existam
	InputMap.add_action("move_left")
	InputMap.add_action("move_right")
	InputMap.add_action("move_up")
	InputMap.add_action("move_down")
	InputMap.add_action("attack")

	var event_left = InputEventKey.new()
	event_left.keycode = KEY_A
	InputMap.action_add_event("move_left", event_left)

	var event_right = InputEventKey.new()
	event_right.keycode = KEY_D
	InputMap.action_add_event("move_right", event_right)

	var event_up = InputEventKey.new()
	event_up.keycode = KEY_W
	InputMap.action_add_event("move_up", event_up)

	var event_down = InputEventKey.new()
	event_down.keycode = KEY_S
	InputMap.action_add_event("move_down", event_down)

	var event_attack = InputEventMouseButton.new()
	event_attack.button_index = MOUSE_BUTTON_LEFT
	InputMap.action_add_event("attack", event_attack)
	
	# Inicia a FSM no estado Idle
	fsm.set_state("IdleState")
	
	# Conecta-se aos sinais internos do recurso, se necessário, ou inicializa a UI
	emit_signal("stats_changed")

# --------------------------
# LÓGICA DE JOGO
# --------------------------

func use_ability(ability_name: String, target: Node) -> void:
	if not character_data: return

	var ability = character_data.get_ability(ability_name)
	if not ability:
		push_warning("Personagem %s não possui a habilidade %s" % [character_data.name, ability_name])
		return

	# 1. Verificar mana
	if character_data.current_mana < ability.mana_cost:
		print("%s não tem mana suficiente para usar %s." % [character_data.name, ability.name])
		return

	# 2. Consumir mana
	character_data.current_mana -= ability.mana_cost
	emit_signal("stats_changed")
	print("%s usou %.2f de mana. Restante: %.2f" % [character_data.name, ability.mana_cost, character_data.current_mana])

	# 3. Lógica de ataque
	var weapon = character_data.inventory.get_equipped_weapon()
	if not weapon:
		# Lógica para habilidades que não dependem de arma (cura, buffs, etc.)
		print("%s usa a habilidade %s sem uma arma." % [character_data.name, ability.name])
		return

	# 4. Calcular dano e emitir sinal
	var final_damage = weapon.get_final_damage()
	# A habilidade pode modificar o dano. Ex:
	# final_damage *= ability.get("damage_multiplier", 1.0)
	
	print("%s ataca %s com %s usando a habilidade '%s', causando %.2f de dano." % [character_data.name, target.name, weapon.get_final_name(), ability.name, final_damage])
	emit_signal("attack_dealt", final_damage, target)

func take_damage(amount: float) -> void:
	if not character_data: return
	
	character_data.current_health -= amount
	emit_signal("stats_changed")
	
	if character_data.current_health <= 0:
		die()

func die() -> void:
	print("%s foi derrotado." % character_data.name)
	# Adicionar lógica de morte (ex: tela de game over, respawn)
	# queue_free()

func gain_xp(amount: int) -> void:
	if not character_data: return

	if character_data.gain_xp(amount):
		# O personagem subiu de nível
		print("%s subiu para o nível %d!" % [character_data.name, character_data.level])
		emit_signal("level_upped", character_data.level)
	
	emit_signal("stats_changed")

func perform_attack():
	var weapon = character_data.inventory.get_equipped_weapon()
	if not weapon:
		print("Lucy está desarmada!")
		return

	var damage = weapon.get_final_damage()

	# Itera sobre todos os corpos que estão colidindo com a hitbox
	for body in hitbox.get_overlapping_bodies():
		# Verifica se o corpo tem o método take_damage (para evitar erros)
		if body.has_method("take_damage"):
			body.take_damage(damage)