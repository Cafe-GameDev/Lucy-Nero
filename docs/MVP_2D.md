# Documento de Design do MVP – 2D Top-Down

## 1. Visão Geral e Objetivos

Este documento define o escopo do **Produto Mínimo Viável (MVP)** para o jogo *Lucy & Nero*. O MVP tem um duplo objetivo:

1.  **Validação Técnica:** Servir como um protótipo 2D top-down para construir e testar a arquitetura de sistemas (Resources, FSM, Combate, Inventário) que será a base para a versão 3D isométrica final.
2.  **Ferramenta de Recrutamento:** Criar uma demonstração de gameplay funcional e polida, capaz de comunicar a visão do jogo e atrair talentos para a equipe, especialmente modeladores 3D.

O foco é provar que as mecânicas são robustas e que o *core loop* é divertido, mesmo com arte placeholder.

---

## 2. Escopo de Mecânicas do MVP

As seguintes mecânicas serão implementadas nesta fase:

### a. Controle e Estado do Jogador (Lucy)
- **Movimentação:** Controle top-down em 8 direções usando `CharacterBody2D`.
- **Máquina de Estados Finitos (FSM):** Uma FSM simples para Lucy, gerenciando os estados:
    - `Idle` (Ocioso)
    - `Move` (Movendo)
    - `Attack` (Atacando)
- **Sprites:** Uso de `Sprite2D` com placeholders (formas geométricas ou sprites simples) para representar a personagem e suas animações básicas.

### b. Sistema de Combate
- **Ataque Básico:** Um único ataque corpo a corpo para Lucy, ativado por um botão.
- **Detecção de Acerto:** Uso de `Area2D` para `hitboxes` (ataques) e `hurtboxes` (áreas vulneráveis) para detectar colisões de combate.
- **Dano e Vida:** Personagens e inimigos terão um atributo de vida. O dano será calculado com base nos dados do `WeaponInstanceData`.

### c. Sistema de Inventário e Armas
- **Inventário Simples:** O `InventoryData` de Lucy poderá conter um pequeno número de armas (ex: 2).
- **Troca de Armas:** Implementação de uma tecla para alternar entre as armas disponíveis no inventário. A troca deve refletir a mudança no `equipped_weapon` do `InventoryData`.
- **Recursos de Arma:** Serão usados os recursos `WeaponBlueprintData`, `MaterialData` e `WeaponInstanceData` para definir as armas, permitindo testar o cálculo de dano dinâmico.

### d. Inteligência Artificial (Nero e Inimigos)
- **IA Básica de Nero:** Nero seguirá Lucy e atacará automaticamente o inimigo mais próximo dentro de um raio de alcance. Não haverá troca de formas ou comandos táticos no MVP.
- **Inimigos:**
    - **Spawn:** Um nó `EnemySpawner` será criado para instanciar inimigos em uma área de teste.
    - **IA do Inimigo:** Os inimigos terão uma FSM simples: `Idle`, `Chase` (perseguir o jogador) e `Attack` (atacar quando próximo).

### e. Habilidades e Progressão
- **Habilidades:** Uma única habilidade básica para Lucy (ex: um ataque mais forte com cooldown) será implementada para testar o sistema de `AbilityData` e o consumo de mana.
- **Progressão:** O sistema de XP (`ExpTableData`) e level up será funcional, mas sem uma árvore de habilidades complexa.

### f. Sistema de Save/Load
- **Persistência de Dados:** Um sistema básico para salvar e carregar o estado do jogo em um arquivo.
- **Dados Salvos:**
    - Posição de Lucy no mapa.
    - Nível e XP atual de Lucy (`CharacterData`).
    - Itens no inventário de Lucy (`InventoryData`).

### g. Interface de Usuário (UI)
- **HUD Básico:** Uma interface simples (`CanvasLayer`) exibindo:
    - Barra de Vida de Lucy.
    - Barra de Mana de Lucy.
    - Indicador da arma equipada.
    - Objetivo da quest ativa.

### h. Guilda e Sistema de Quests
- **NPC da Guilda:** Um único NPC em cena que funcionará como o representante da guilda.
- **Quadro de Missões:** Ao interagir com o NPC, o jogador terá a opção de escolher 1 de 2 missões simples:
    - **Missão de Aniquilação:** Ex: "Derrote 5 inimigos."
    - **Missão de Coleta:** Ex: "Colete 3 itens que os inimigos deixam cair."
- **Diário de Missões (UI):** Uma pequena área na UI para mostrar o objetivo da missão ativa.
- **Quest Emergencial (Não Listada):**
    - Uma `Area2D` será posicionada no cenário de teste.
    - Ao entrar nesta área, uma quest é ativada automaticamente (ex: "Sobreviva à horda!").
    - O `EnemySpawner` é ativado para gerar uma onda de inimigos, simulando um ataque surpresa.

---

## 3. Cenário de Teste

O MVP consistirá em uma única cena de teste:
- Uma área fechada (arena).
- O `Player` (Lucy) e `Nero`.
- O `EnemySpawner` que gera um tipo de inimigo.
- O NPC da Guilda e a área de trigger da quest emergencial.

---

## 4. Polimento e Apresentação (Game Feel)

Para que o MVP seja uma ferramenta de recrutamento eficaz, ele precisa ser "suculento" (juicy) e satisfatório de jogar. Os seguintes elementos de polimento são essenciais:

- **Feedback Visual (VFX):**
    - **Partículas de Ataque:** Efeitos simples de partículas para o rastro do ataque de Lucy.
    - **Partículas de Impacto:** Um efeito visual quando um ataque atinge um inimigo.
    - **Feedback de Dano:** Inimigos e o jogador devem piscar em uma cor (ex: branco ou vermelho) ao receber dano.

- **Feedback Sonoro (SFX):**
    - **Sons de Ataque:** Som para o "swing" da arma.
    - **Sons de Impacto:** Som distinto para quando um ataque acerta um alvo.
    - **Sons de UI:** Sons para cliques e interações nos menus (como aceitar uma quest).

- **Juice Adicional:**
    - **Screen Shake:** Uma leve tremida de tela em ataques críticos ou na morte de inimigos maiores.
    - **Hit Stop/Freeze Frame:** Uma pausa muito curta (alguns frames) no momento do impacto para dar peso aos ataques.
