# 📜 Game Design Document (GDD) – Lucy & Nero

## 1. Visão Geral

Este documento detalha a visão para **Lucy & Nero** como um Action RPG (ARPG).

> **Nota:** O desenvolvimento inicial está sendo feito em 2D top-down para validar as mecânicas principais, com a meta de se tornar um jogo 3D isométrico. A documentação pode refletir uma mistura de ambos os estágios durante esta fase.

O design se inspira em clássicos como *Diablo* e *Baldur's Gate: Dark Alliance*, com a agilidade e sistemas de sinergia de jogos modernos como *Hades*.

O foco é em combate estratégico contra múltiplos inimigos, exploração de grandes ambientes e um ciclo de progressão viciante centrado na Forja Mágica de Lucy e na evolução de Nero.

---

## 2. O Ciclo de Gameplay (Core Loop)

O jogador seguirá um ciclo claro e recompensador, focado na sinergia entre combate e criação:

1.  **Explorar:** Viajar por mapas e dungeons repletos de inimigos, segredos e recursos.
2.  **Combater:** Engajar em combate em tempo real, utilizando as armas de Lucy e as formas de Nero para superar desafios.
3.  **Coletar (Loot):** Juntar materiais de forja, essências mágicas, runas e projetos de armas deixados pelos inimigos e encontrados no cenário.
4.  **Retornar à Forja:** Voltar ao hub central (Forja-Luz) para processar os materiais.
5.  **Forjar e Aprimorar:** Criar novas armas e armaduras para Lucy e usar essências para desbloquear habilidades para Nero.
6.  **Repetir:** Acessar novas áreas, agora mais forte, para enfrentar desafios maiores e obter recompensas melhores.

---

## 3. Personagens – Lucy & Nero

**Título:** Entre Espadas e Garras

### 👤 Lucy – A Forjadora da Luz

#### Aparência

Visual inspirado em anime, com traços detalhados, expressivos e dinâmicos, enfatizando magia e ação.

- **Idade:** 16 anos
- **Altura:** 1,75 m
- **Cabelo:** Longo, ondulado, preto/moreno, geralmente preso em rabo de cavalo.
- **Olhos:** Verde-esmeralda vibrante, que brilham intensamente quando canaliza magia.
- **Constituição:** Atlética e ágil, músculos definidos por anos de treinamento.
- **Pele:** Clara, com algumas cicatrizes de batalhas.

#### Trajes e Equipamentos

- **Traje Principal:** Kimono de batalha preto com detalhes em vermelho e dourado.
- **Top:** Ajustado, mangas longas com runas douradas que brilham com magia.
- **Calças:** Flexíveis e reforçadas nos joelhos/canelas com placas leves.
- **Botas:** Resistentes, feitas para combate e longas jornadas.
- **Luvas:** Sem dedos, marcadas com runas protetoras.
- **Acessórios:**
    - Cinto com poções, ferramentas e itens de forja.
    - Capa curta com runas defensivas (removível).

#### Armas Principais

- **Katana:** Lâmina curva com runas gravadas, que brilham conforme o elemento imbuído.
- **Arco:** Estrutura leve, decorada com runas que ativam efeitos mágicos; flechas podem ser encantadas.
- **Escudo:** Redondo, leve, runas reforçadoras de defesa.

#### Poderes – Forja Mágica

- **Habilidade Única:** Lucy não conjura magias convencionais (como bolas de fogo).
- **Forja Mágica:** Ela cria armas/armaduras encantadas com propriedades específicas.
- **Combinação:** O material + sua mana pura = efeitos elementais (fogo, água, eletricidade, vento).
- **Economia de Mana:** Forjar gasta pouca mana, mas usar as armas imbuídas consome bastante, pois a reação é alimentada por sua energia vital.

<table style="width: 100%; table-layout: fixed; border-collapse: collapse;">
  <tr>
    <td style="padding: 0;">
      <div style="width: 100%; height: 300px; overflow: hidden;">
        <img src="https://github.com/Cafe-GameDev/Lucy-Nero/blob/main/public/Lucy1.jpg?raw=true" alt="Lucy" style="width: 100%; height: 100%; object-fit: cover;">
      </div>
    </td>
    <td style="padding: 0;">
      <div style="width: 100%; height: 300px; overflow: hidden;">
        <img src="https://github.com/Cafe-GameDev/Lucy-Nero/blob/main/public/Lucy2.png?raw=true" alt="Lucy" style="width: 100%; height: 100%; object-fit: cover;">
      </div>
    </td>
    <td style="padding: 0;">
      <div style="width: 100%; height: 300px; overflow: hidden;">
        <img src="https://github.com/Cafe-GameDev/Lucy-Nero/blob/main/public/Lucy3.png?raw=true" alt="Lucy" style="width: 100%; height: 100%; object-fit: cover;">
      </div>
    </td>
  </tr>
</table>

---

### 🐾 Nero – Guardião Metamorfo

#### Aparência

Nero é uma criatura metamorfa que assume diversas formas, todas mantendo o padrão de um Bengal melanístico:
Design inspirado em anime, combinando expressividade felina com dinamismo nas metamorfoses.

- Pelagem/Penas pretas com rosetas e manchas visíveis em tons diferentes de cinza e preto.
- Olhos verdes felinos, intensos e brilhantes, presentes em todas as formas.
- Inspirado na raça de Bengal, um híbrido entre o gato doméstico e o leopardo asiático. Essa linhagem confere a ele um corpo musculoso, ágil e perfeitamente adaptado para o combate e caçadas, mantendo toda a força e destreza de um predador nato. 
- Apesar de sua aparência selvagem e instintos de caça apurados, o Bengal é conhecido por ser extremamente dócil, carinhoso e brincalhão com aqueles em quem confia, combinando instinto felino e inteligência em um equilíbrio fascinante de comportamento e físico.

<table style="width: 100%; table-layout: fixed; border-collapse: collapse;">
  <tr>
    <td style="padding: 0;">
      <div style="width: 100%; height: 240px; overflow: hidden;">
        <img src="https://github.com/Cafe-GameDev/Lucy-Nero/blob/main/public/Bengal1.jpg?raw=true" alt="Bengal" style="width: 100%; height: 100%; object-fit: cover;">
      </div>
    </td>
    <td style="padding: 0;">
      <div style="width: 100%; height: 240px; overflow: hidden;">
        <img src="https://github.com/Cafe-GameDev/Lucy-Nero/blob/main/public/Bengal2.jpeg?raw=true" alt="Bengal" style="width: 100%; height: 100%; object-fit: cover;">
      </div>
    </td>
  </tr>
</table>

#### Formas e Habilidades

##### 🐈 Forma Gato
- **Descrição:** Ágil e furtivo, excelente em emboscadas e combate próximo.
- **Habilidades:**
    - **Garras Rúnicas:** Cortes que canalizam mana, causando dano mágico adicional.
    - **Rasgo Sombrio:** Ataque que deixa marcas mágicas instáveis nos inimigos, que podem ser detonadas por Lucy.
    - **Predador Silencioso:** Atravessa brevemente obstáculos e inimigos para se reposicionar, aparecendo pelas costas do alvo.

##### 🦅 Forma Corvo
- **Descrição:** Forma aérea, usada para vigilância e ataques rápidos em área.
- **Habilidades:**
    - **Voo Rasante:** Investida aérea cortante que pode atingir múltiplos inimigos em linha.
    - **Chuva de Penas:** Lança uma saraivada de projéteis mágicos em área.
    - **Olho do Vigia:** Revela inimigos ocultos e pontos fracos em uma grande área ao redor.

##### 🐎 Forma Cavalo
- **Descrição:** Forma de montaria, resistente e voltada para impacto e defesa.
- **Habilidades:**
    - **Investida Trovejante:** Corrida que gera uma onda de impacto, empurrando e atordoando inimigos.
    - **Pilar da Terra:** Bate os cascos no chão, criando um tremor que atordoa inimigos próximos.
    - **Aura de Guardião:** Reforça temporariamente as defesas de Lucy, absorvendo uma parte do dano recebido.

##### 🌑 Forma Sombra
- **Descrição:** Forma espiritual/metafísica onde Nero se funde à sombra de Lucy.
- **Habilidades:**
    - **Camuflagem Total:** Permanece invisível no ambiente.
    - **Instinto Sombrio:** Pode emergir da sombra de Lucy instantaneamente, seja para interceptar um ataque ou golpear um inimigo pelas costas.

<table style="width: 100%; table-layout: fixed; border-collapse: collapse;">
  <tr>
    <td style="padding: 0;">
      <div style="width: 100%; height: 240px; overflow: hidden;">
        <img src="https://github.com/Cafe-GameDev/Lucy-Nero/blob/main/public/Nero1.png?raw=true" alt="Nero" style="width: 100%; height: 100%; object-fit: cover;">
      </div>
    </td>
    <td style="padding: 0;">
      <div style="width: 100%; height: 240px; overflow: hidden;">
        <img src="https://github.com/Cafe-GameDev/Lucy-Nero/blob/main/public/Nero2.png?raw=true" alt="Nero" style="width: 100%; height: 100%; object-fit: cover;">
      </div>
    </td>
  </tr>
</table>

---

## 4. Sistema de Combate e Sinergia

O combate é em tempo real, com perspectiva isométrica, e focado na cooperação tática entre Lucy e Nero.

### Lucy – A Forjadora em Batalha

O combate de Lucy é direto, baseado em armas e no uso estratégico de mana para encantar seu equipamento.

-   **Estilos de Arma:** Cada tipo de arma (Katana, Lança, Arco, Escudo) possui um moveset único:
    -   **Ataques Básicos e Pesados:** Combos simples e fáceis de usar.
    -   **Habilidades de Arma:** 2-3 habilidades ativas por arma, que consomem "Stamina" ou têm cooldowns curtos (Ex: investida com a lança, tiro perfurante com o arco).
-   **Encantamentos Rúnicos:** Lucy pode gastar **Mana** para ativar temporariamente as runas de sua arma, adicionando efeitos (fogo, gelo, roubo de vida, etc.). Funciona como um "buff" temporário que o jogador deve gerenciar.
-   **Esquiva:** A principal ferramenta de defesa. Uma esquiva rápida com curtos frames de invencibilidade, essencial para reposicionamento e sobrevivência.

### Nero – O Guardião Tático

Nero é um companheiro de IA com controle tático pelo jogador.

-   **Comandos do Guardião:** O jogador pode dar ordens simples a Nero com um único botão:
    -   **Focar Alvo:** Nero concentrará seus ataques no mesmo alvo que Lucy.
    -   **Modo Defensivo:** Nero permanecerá próximo a Lucy, atacando inimigos que se aproximarem dela.
    -   **Livre:** Nero ataca os alvos de oportunidade, priorizando inimigos mais fracos ou distantes.
-   **Troca de Forma Tática:** O jogador pode comandar a metamorfose de Nero (com cooldown) para se adaptar à batalha:
    -   **Forma Gato:** Foco em dano massivo a um único alvo (DPS). Ideal para elites e chefes.
    -   **Forma Corvo:** Foco em controle de grupo (crowd control) e ataques em área.
    -   **Forma Cavalo:** Foco em defesa (tanque), atraindo a atenção dos inimigos (taunt) e fornecendo bônus de defesa para Lucy.

### Vínculo e Sinergia

A barra de "Sinergia" é preenchida conforme Lucy e Nero lutam juntos. Ela permite o uso de habilidades devastadoras.

-   **Ataques de Vínculo:** Habilidades supremas que consomem a barra de Sinergia.
    -   *Exemplo (Gato):* Lucy lança uma isca. Nero se teleporta até ela, executando uma sequência de golpes em área.
    -   *Exemplo (Cavalo):* Nero cria uma área de proteção rúnica que cura Lucy e repele inimigos.
-   **Modo Sombra:** A habilidade máxima do vínculo. Nero se funde à sombra de Lucy por um curto período.
    -   Os ataques de Lucy ganham dano sombrio adicional.
    -   A cada esquiva, Nero emerge para atacar o inimigo mais próximo.
    -   Receber um golpe fatal neste modo faz com que Nero intercepte o dano, salvando Lucy e encerrando o efeito.

---

## 5. Sistema de Progressão

A progressão é horizontal e baseada em conhecimento e equipamento.

### Lucy – Sistema de Progressão Cruzada

A evolução de Lucy é baseada em um sistema de "Progressão Cruzada", onde sua proficiência em combate e sua habilidade como forjadora estão interligadas. A progressão se divide em múltiplos pilares:

-   **1. Nível de Combate (Personagem):** Lutar e derrotar inimigos concede XP a Lucy. Ao subir de nível, seus atributos fundamentais (Vida, Mana, Ataque) aumentam, tornando-a mais eficaz em combate.

-   **2. Progressão de Equipamento (Forja):** O jogador melhora o equipamento de Lucy através de um sistema de forja com várias camadas:
    -   **Descoberta de Materiais:** Encontrar materiais novos e de melhor qualidade (ex: Mithril) é o primeiro passo para criar armas e armaduras mais fortes.
    -   **Aquisição de Conhecimento:** O jogador encontra "Projetos de Forja" que ensinam Lucy a criar novos tipos de armas (Clavas, Bestas) ou a refinar seus designs atuais para extrair o máximo potencial de um material.
    -   **Maestria de Arma:** Usar um tipo de arma repetidamente aumenta a proficiência de Lucy com ela. Essa maestria permite ao jogador usar a forja para "subir o nível" de uma arma específica, melhorando ainda mais seus atributos.

-   **3. Progressão por Descoberta:** A exploração é recompensada de forma orgânica. Ao encontrar uma "Clava de Iridium" em uma ruína antiga, Lucy desbloqueia simultaneamente:
    -   O **Material** "Iridium" para uso na forja.
    -   O **Tipo de Arma** "Clava" em seus conhecimentos de forja.

-   **4. Sistema de Runas:** A camada final de personalização. O jogador pode encontrar, comprar ou criar runas para encaixar em seus equipamentos, concedendo bônus e efeitos especiais (dano elemental, novas habilidades, etc.), permitindo adaptar o estilo de jogo.

-   **Ciclo Virtuoso:** Este sistema cria um ciclo de gameplay recompensador:
    1.  **Lutar** para ganhar XP e subir o nível da personagem.
    2.  **Explorar** para encontrar Materiais, Projetos e Runas.
    3.  **Forjar** e **Encantar** equipamentos melhores com os novos recursos.
    4.  **Lutar** com o novo equipamento para ganhar Maestria de Arma e aprimorá-lo ainda mais.

### Nero – Progressão por Evolução

Nero evolui ao absorver **Essências Primevas**, encontradas em chefes ou locais secretos.

-   **Árvore de Habilidades:** Cada forma (Gato, Corvo, Cavalo) possui sua própria árvore. O jogador gasta pontos de essência para:
    -   Desbloquear novas habilidades para a IA de Nero.
    -   Melhorar os bônus passivos de cada forma.
    -   Aprimorar os Ataques de Vínculo.
    -   *Exemplo (Árvore do Gato):* Habilidades focadas em dano crítico, sangramento e invisibilidade.
    -   *Exemplo (Árvore do Cavalo):* Habilidades focadas em armadura, resistência a controle e reflexão de dano.

---

## 6. Design de Mundo e Níveis

O mundo de Lucy & Nero é um cenário de fantasia vibrante, inspirado em animes isekai, repleto de magia, cidades movimentadas e perigos desconhecidos. A vida de um aventureiro é central para a experiência, com uma **Guilda de Aventureiros** servindo como o principal ponto para obter **missões (quests)**, que vão desde a aniquilação de monstros até a escolta de mercadores.

-   **Hub Central:** A cidade de **Forja-Luz** serve como o principal hub do jogo, onde Lucy tem sua oficina e o jogador pode interagir com NPCs, aceitar missões e se preparar para as jornadas.
-   **Biomas e Dungeons:** O mundo é dividido em grandes regiões distintas (florestas assombradas, ruínas de cristal, pântanos vulcânicos), cada uma com seus próprios inimigos, materiais e segredos. **Dungeons** perigosas, como cavernas infestadas de **goblins** ou ruínas guardadas por **golens**, são os principais locais para combate e coleta de recursos raros.
-   **Estrutura dos Níveis:** Os níveis são desenhados à mão para garantir uma exploração significativa, mas podem conter elementos de aleatoriedade (localização de tesouros, grupos de inimigos, eventos do mundo) para manter o frescor a cada visita. A verticalidade é usada para criar arenas e pontos de vantagem, mas a câmera isométrica permanece clara.

---

## 7. Direção de Arte

*Ver `DocumentoDeArte.md` para detalhes visuais completos.*

A direção de arte busca um estilo 3D estilizado com texturas pictóricas, combinando a expressividade de animes de alta qualidade com a atmosfera sombria e imersiva de ARPGs clássicos. As referências principais são o design de personagens de *Hades* e *Genshin Impact*, a atmosfera de *Diablo III*, e a clareza visual de *League of Legends*.

O contraste entre luz e sombra é fundamental, com a magia de Lucy e os padrões de Nero servindo como pontos de luz em ambientes muitas vezes escuros.

---

## 8. Direção de Áudio

*Ver `DocumentoDeAudio.md` para detalhes completos.*

A paisagem sonora de **Lucy & Nero** deve ser imersiva, dinâmica e satisfatória. O áudio tem três pilares principais: a **trilha sonora orquestral e etérea**, os **efeitos sonoros de combate impactantes** e a **ambientação rica dos biomas**.

---

## 9. Design Técnico

*Ver `DocumentoTecnico.md` para detalhes completos.*

- **Motor:** Godot Engine 4.5 (ou superior), utilizando o renderizador Forward+.
- **Linguagem:** GDScript.
- **Versionamento:** Git.
- **Arquitetura Principal:**
    - **Estrutura de Cenas:** Modular (`Player.tscn`, `Enemy.tscn`, `Level.tscn`).
    - **Singleton (Autoload) - Event Bus:** `EventBus.gd` para comunicação desacoplada.
    - **Recursos Customizados:** Dados do jogo (armas, runas, etc.) serão definidos através de Recursos (`.tres`).

---

## 10. Interface de Usuário (UI/UX)

*Ver `DocumentoDeArte.md` para detalhes visuais.*

- **Estilo:** Moderna, limpa e minimalista, com elementos que remetem às runas e à forja.
- **HUD (Heads-Up Display):** Limpo e informativo, mostrando Vida, Mana, Stamina e a barra de Sinergia. As habilidades ativas e a forma atual de Nero são claramente visíveis.
- **Menus:** Telas de Inventário, Forja, Árvore de Habilidades (Nero) e Mapa. A navegação deve ser intuitiva tanto no controle quanto no teclado/mouse.
- **Feedback:** A interface deve fornecer feedback claro para ações como coleta de itens, recebimento de dano e conclusão de objetivos.

---

## 11. Narrativa

*(A ser detalhado em um documento futuro).*
