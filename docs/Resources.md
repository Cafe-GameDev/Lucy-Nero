# Documentação de Recursos (Resources)

Este documento lista e descreve os recursos (Resources) e as classes GDScript que os definem no projeto Lucy & Nero.

## Classes GDScript de Recursos

As classes GDScript abaixo estendem `Resource` e são usadas para definir tipos de dados personalizados que podem ser salvos como arquivos `.tres` no Godot Engine.

### AbilityData
**Extends:** `Resource`
**Path:** `godot/resources/AbilityData.gd`
**Descrição:** Define os dados básicos para uma habilidade, incluindo nome, descrição e custo de mana.

### CharacterData
**Extends:** `Resource`
**Path:** `godot/resources/CharacterData.gd`
**Descrição:** Contém os atributos de identidade de um personagem (nome, idade, altura, descrição), referências a recursos de progressão (tabela de XP, árvore de habilidades, progressão de stats), habilidades, formas (para Nero) e inventário.

### EnemyData
**Extends:** `Resource`
**Path:** `godot/resources/EnemyData.gd`
**Descrição:** Define os dados para um tipo de inimigo, incluindo nome, cena 3D, progressão de stats, habilidades e tabela de loot.

### ExpTableData
**Extends:** `Resource`
**Path:** `godot/resources/ExpTableData.gd`
**Descrição:** Armazena a tabela de experiência necessária para subir de nível.

### FormData
**Extends:** `Resource`
**Path:** `godot/resources/FormData.gd`
**Descrição:** Representa uma das formas de Nero, contendo seu nome, descrição e as habilidades associadas a essa forma.

### InventoryData
**Extends:** `Resource`
**Path:** `godot/resources/InventoryData.gd`
**Descrição:** Gerencia o inventário de um personagem, incluindo materiais, equipamentos e a arma equipada.

### LootTableData
**Extends:** `Resource`
**Path:** `godot/resources/LootTableData.gd`
**Descrição:** Define os itens que podem ser dropados por inimigos ou encontrados no ambiente, com suas quantidades e pesos de drop.

### MaterialData
**Extends:** `Resource`
**Path:** `godot/resources/MaterialData.gd`
**Descrição:** Descreve um material de forja, incluindo nome, descrição, ícone e modificadores de atributos (dano, peso, defesa).

### RuneData
**Extends:** `Resource`
**Path:** `godot/resources/RuneData.gd`
**Descrição:** Define os dados para uma runa, incluindo nome, descrição e tipo (Elemental, Habilidade, Passiva).

### SkillTreeData
**Extends:** `Resource`
**Path:** `godot/resources/SkillTreeData.gd`
**Descrição:** Armazena a estrutura e o estado de uma árvore de habilidades, permitindo desbloquear habilidades.

### StatProgressionData
**Extends:** `Resource`
**Path:** `godot/resources/StatProgressionData.gd`
**Descrição:** Contém tabelas de progressão de atributos por nível para personagens e inimigos.

### WeaponBlueprintData
**Extends:** `Resource`
**Path:** `godot/resources/WeaponBlueprintData.gd`
**Descrição:** Define o "projeto" base de uma arma, incluindo nome, tipo, dano base e peso base.

### WeaponInstanceData
**Extends:** `Resource`
**Path:** `godot/resources/WeaponInstanceData.gd`
**Descrição:** Representa uma instância específica de uma arma no jogo, combinando um projeto, um material, nível de refinamento, slots de runas e nível de maestria.

## Arquivos de Recursos Godot (.tres)

Estes são os arquivos de dados criados no Godot Engine usando as classes GDScript acima.

### AbilityData (.tres)
Recursos que definem habilidades específicas no jogo.
*   **File:** `godot/data/Abilities/AuraDeGuardiao.tres`
    *   **Name:** Aura de Guardião
    *   **Description:** Reforça temporariamente as defesas de Lucy, absorvendo uma parte do dano recebido.
    *   **Mana Cost:** 30.0
*   **File:** `godot/data/Abilities/ChuvaDePenas.tres`
    *   **Name:** Chuva de Penas
    *   **Description:** Lança uma saraivada de projéteis mágicos em área.
    *   **Mana Cost:** 20.0
*   **File:** `godot/data/Abilities/GarrasRunicas.tres`
    *   **Name:** Garras Rúnicas
    *   **Description:** Cortes que canalizam a mana de Lucy, causando dano mágico adicional.
    *   **Mana Cost:** 5.0
*   **File:** `godot/data/Abilities/InvestidaTrovejante.tres`
    *   **Name:** Investida Trovejante
    *   **Description:** Corrida que gera uma onda de impacto, empurrando e atordoando inimigos.
    *   **Mana Cost:** 25.0
*   **File:** `godot/data/Abilities/OlhoDoVigia.tres`
    *   **Name:** Olho do Vigia
    *   **Description:** Revela inimigos ocultos e pontos fracos em uma grande área ao redor.
    *   **Mana Cost:** 5.0
*   **File:** `godot/data/Abilities/PilarDaTerra.tres`
    *   **Name:** Pilar da Terra
    *   **Description:** Bate os cascos no chão, criando um tremor que atordoa inimigos próximos.
    *   **Mana Cost:** 15.0
*   **File:** `godot/data/Abilities/PredadorSilencioso.tres`
    *   **Name:** Predador Silencioso
    *   **Description:** Atravessa brevemente obstáculos e inimigos para se reposicionar, aparecendo pelas costas do alvo.
    *   **Mana Cost:** 10.0
*   **File:** `godot/data/Abilities/RasgoSombrio.tres`
    *   **Name:** Rasgo Sombrio
    *   **Description:** Ataque que deixa marcas mágicas instáveis nos inimigos, que podem ser detonadas por Lucy.
    *   **Mana Cost:** 15.0
*   **File:** `godot/data/Abilities/VooRasante.tres`
    *   **Name:** Voo Rasante
    *   **Description:** Investida aérea cortante que pode atingir múltiplos inimigos em linha.
    *   **Mana Cost:** 10.0

### CharacterData (.tres)
Recursos que definem os personagens principais do jogo.
*   **File:** `godot/data/Characters/Lucy.tres`
    *   **Name:** Lucy
    *   **Age:** 16
    *   **Height:** 1.75
    *   **Description:** Uma jovem forjadora com a habilidade de imbuir magia em suas criações.
    *   **Stat Progression:** `LucyStatProgression.tres`
    *   **Exp Table:** `LucyExpTable.tres`
    *   **Skill Tree:** `LucySkillTree.tres`
    *   **Inventory:** `LucyInventory.tres`
*   **File:** `godot/data/Characters/Nero.tres`
    *   **Name:** Nero
    *   **Description:** Um guardião metamorfo místico, ligado a Lucy por um pacto antigo.
    *   **Stat Progression:** `NeroStatProgression.tres`
    *   **Forms:** `FormaGato.tres`, `FormaCorvo.tres`, `FormaCavalo.tres`

### ExpTableData (.tres)
Recursos que definem tabelas de experiência.
*   **File:** `godot/data/ExpTables/LucyExpTable.tres`
    *   **XP Table:** `[100, 250, 450, 700, 1000]`

### FormData (.tres)
Recursos que definem as diferentes formas de Nero.
*   **File:** `godot/data/Forms/FormaCavalo.tres`
    *   **Name:** Forma de Cavalo
    *   **Description:** Forma de montaria, resistente e voltada para impacto e defesa.
    *   **Abilities:** `InvestidaTrovejante.tres`, `PilarDaTerra.tres`, `AuraDeGuardiao.tres`
*   **File:** `godot/data/Forms/FormaCorvo.tres`
    *   **Name:** Forma de Corvo
    *   **Description:** Forma aérea, usada para vigilância e ataques rápidos em área.
    *   **Abilities:** `VooRasante.tres`, `ChuvaDePenas.tres`, `OlhoDoVigia.tres`
*   **File:** `godot/data/Forms/FormaGato.tres`
    *   **Name:** Forma de Gato
    *   **Description:** Ágil e furtivo, excelente em emboscadas e combate próximo.
    *   **Abilities:** `GarrasRunicas.tres`, `RasgoSombrio.tres`, `PredadorSilencioso.tres`

### InventoryData (.tres)
Recursos que representam inventários de personagens.
*   **File:** `godot/data/Inventories/LucyInventory.tres`
    *   **Materials:** `{}` (Vazio)
    *   **Equipment:** `[]` (Vazio)

### SkillTreeData (.tres)
Recursos que definem árvores de habilidades.
*   **File:** `godot/data/SkillTrees/LucySkillTree.tres`
    *   **Skills:** `{"Forja Refinada": {"cost": 1, "unlocked": false}, "Maestria em Lâminas": {"cost": 2, "unlocked": false}}`

### StatProgressionData (.tres)
Recursos que definem a progressão de atributos.
*   **File:** `godot/data/StatProgressions/LucyStatProgression.tres`
    *   **Stats per Level:** `{1: {...}, 2: {...}, 3: {...}, 4: {...}, 5: {...}}` (Detalhes omitidos para brevidade)
*   **File:** `godot/data/StatProgressions/NeroStatProgression.tres`
    *   **Stats per Level:** `{1: {...}, 2: {...}, 3: {...}}` (Detalhes omitidos para brevidade)
