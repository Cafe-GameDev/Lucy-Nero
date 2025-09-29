extends Resource
class_name WeaponInstanceData

# --- SINAIS ---
# Emitido quando a arma realiza um ataque, informando o dano e o alvo.
# A cena do jogo deve conectar-se a este sinal para aplicar o dano ao nó do alvo.
signal attack_dealt(damage, target)

# --- DADOS ---
@export var blueprint: Resource     # WeaponBlueprintData
@export var material: Resource      # MaterialData
@export var refinement_level: int = 1 # 1 = Design Padrão, 2 = Design Refinado

@export var rune_slots: int = 1
var equipped_runes: Array[Resource] # Array de RuneData

var mastery_level: int = 1
var mastery_xp: int = 0

# --------------------------
# FUNCS DE LÓGICA
# --------------------------

func perform_attack(user: Resource, target: Node, ability: Resource = null) -> void:
	if not blueprint or not material:
		push_error("Arma inválida: sem blueprint ou material.")
		return

	var final_damage = get_final_damage()
	var attack_description = "%s ataca %s com %s" % [user.name, target.name, get_final_name()]

	# Se uma habilidade foi usada, ela pode modificar o ataque
	if ability:
		# Exemplo: a habilidade poderia ter um multiplicador de dano
		# final_damage *= ability.get("damage_multiplier", 1.0)
		attack_description += " usando a habilidade '%s'" % ability.name

	print(attack_description + " causando %.2f de dano." % final_damage)
	
	# Emite o sinal para que a cena do jogo possa aplicar o dano e os efeitos visuais.
	# O recurso em si não deve interagir diretamente com a árvore de cenas.
	attack_dealt.emit(final_damage, target)

# --------------------------
# FUNCS DE CÁLCULO
# --------------------------

# Calcula o dano final da arma com base em seus componentes e maestria
func get_final_damage() -> float:
    if not blueprint or not material: return 0.0
    
    # Dano = (Dano Base do Blueprint * Mod. do Material) + Bônus do Nível de Maestria
    var calculated_damage = blueprint.base_damage * material.damage_modifier
    calculated_damage *= (1.0 + (mastery_level - 1) * 0.05) # Ex: +5% de dano por nível
    
    # Runas poderiam adicionar mais modificadores aqui
    
    return calculated_damage

func get_final_name() -> String:
    return "%s de %s" % [blueprint.weapon_name, material.name]

func get_xp_to_next_mastery_level() -> int:
	return 100 + (mastery_level - 1) * 50

func gain_mastery_xp(amount: int) -> void:
	mastery_xp += amount
	while mastery_xp >= get_xp_to_next_mastery_level():
		mastery_xp -= get_xp_to_next_mastery_level()
		mastery_level += 1
		print("Maestria da arma %s aumentou para o nível %d!" % [get_final_name(), mastery_level])
