extends Control

# --- Referências aos Nós da UI ---
@onready var health_bar: ProgressBar = $MarginContainer/VBoxContainer/StatsBars/HealthBar
@onready var mana_bar: ProgressBar = $MarginContainer/VBoxContainer/StatsBars/ManaBar
@onready var lucy_state_label: Label = $MarginContainer/VBoxContainer/StateLabels/LucyStateLabel

# --- Funções de Atualização ---

# Função para ser conectada ao sinal 'stats_changed' do Player
func update_stats(character_data: CharacterData):
	if not character_data:
		return
	
	# Atualiza as barras de progresso
	health_bar.max_value = character_data.max_health
	health_bar.value = character_data.current_health
	
	mana_bar.max_value = character_data.max_mana
	mana_bar.value = character_data.current_mana

# Função para ser conectada ao sinal 'state_changed' da FSM do Player
func update_lucy_state(new_state_name: String):
	lucy_state_label.text = new_state_name
