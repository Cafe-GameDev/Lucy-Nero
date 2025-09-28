# 📜 GDD – Lucy & Nero (ARPG Isométrico 3D)

## 1. Visão Geral

Este documento detalha a visão para **Lucy & Nero** como um Action RPG (ARPG) com perspectiva isométrica. O design se inspira em clássicos como *Diablo* e *Baldur's Gate: Dark Alliance*, com a agilidade e sistemas de sinergia de jogos modernos como *Hades*.

O foco é em combate estratégico contra múltiplos inimigos, exploração de grandes ambientes e um ciclo de progressão viciante centrado na Forja Mágica de Lucy e na evolução de Nero.

---

## 2. O Ciclo de Gameplay (Core Loop)

O jogador seguirá um ciclo claro e recompensador:

1.  **Explorar:** Viajar por mapas semi-abertos e dungeons repletos de inimigos, segredos e recursos.
2.  **Combater:** Engajar em combate em tempo real, utilizando as armas de Lucy e as formas de Nero para superar desafios.
3.  **Coletar (Loot):** Juntar materiais de forja, essências mágicas, runas e projetos de armas.
4.  **Retornar à Forja:** Voltar a um hub central (a oficina de Lucy) para processar os materiais.
5.  **Forjar e Aprimorar:** Criar novas armas e armaduras para Lucy, e usar essências para desbloquear habilidades para Nero.
6.  **Repetir:** Acessar novas áreas, agora mais forte, para enfrentar desafios maiores.

---

## 3. Sistema de Combate Detalhado

### Lucy – A Forjadora em Batalha

O combate de Lucy é direto e baseado em armas. Ela não lança feitiços, mas imbui sua mana nas armas que cria.

-   **Estilos de Arma:** Cada tipo de arma (Katana, Lança, Arco, Escudo) possui um moveset único:
    -   **Ataques Básicos e Pesados:** Combos simples e fáceis de usar.
    -   **Habilidades de Arma:** 2-3 habilidades ativas por arma, que consomem um recurso de "Stamina" ou têm cooldowns curtos. (Ex: Uma investida com a lança, um tiro perfurante com o arco).
-   **Encantamentos Rúnicos:** Lucy pode gastar **Mana** para ativar temporariamente as runas de sua arma, adicionando efeitos elementais (fogo, gelo, raio) ou propriedades especiais (roubo de vida, dano em área). Isso funciona como um "buff" temporário que o jogador deve gerenciar.
-   **Esquiva:** A principal ferramenta de defesa. Uma esquiva rápida e com curta invencibilidade, essencial para reposicionamento.

### Nero – O Guardião Tático

Nero é um companheiro de IA, mas com controle tático pelo jogador.

-   **Comandos do Guardião:** O jogador pode dar ordens simples a Nero (com um único botão):
    -   **Focar Alvo:** Nero concentrará seus ataques no mesmo alvo que Lucy.
    -   **Modo Defensivo:** Nero permanecerá próximo a Lucy, atacando inimigos que se aproximarem dela.
    -   **Livre:** Nero ataca os alvos de oportunidade, priorizando inimigos mais fracos ou distantes.
-   **Troca de Forma Tática:** O jogador pode comandar a metamorfose de Nero (com cooldown), adaptando-se à batalha:
    -   **Forma Gato:** Foco em dano massivo a um único alvo. Ideal para eliminar inimigos de elite ou chefes.
    -   **Forma Corvo:** Foco em controle de grupo (crowd control) com ataques em área e revelação de inimigos furtivos.
    -   **Forma Cavalo:** Foco em defesa e suporte, atraindo a atenção dos inimigos (taunt) e fornecendo bônus de defesa para Lucy.
-   **Ataques de Vínculo:** Habilidades supremas que exigem uma barra de "Sinergia" cheia.
    -   *Exemplo 1 (Gato):* Lucy lança uma runa-isca. Nero se teleporta até ela, executando uma sequência de golpes devastadores em todos os inimigos próximos à runa.
    -   *Exemplo 2 (Cavalo):* Nero empina e bate os cascos no chão, criando uma área de proteção rúnica que cura Lucy e repele inimigos.

### Modo Sombra

Esta é a habilidade máxima do vínculo. Nero se funde à sombra de Lucy, fortalecendo-a drasticamente por um curto período.

-   Os ataques de Lucy ganham dano sombrio adicional.
-   A cada esquiva, Nero emerge brevemente para atacar o inimigo mais próximo.
-   Receber um golpe fatal enquanto o modo está ativo faz com que Nero intercepte o dano, encerrando o modo e salvando Lucy.

---

## 4. Sistema de Progressão

A progressão é horizontal e baseada em conhecimento e equipamento.

### Lucy – Progressão pela Forja

Lucy não sobe de nível (sem atributos como Força ou Destreza). Seu poder vem do que ela cria.

-   **Forja Mágica:** É o coração da progressão. O jogador encontra **Projetos** para novas armas e **Materiais** de diferentes qualidades. A combinação de um projeto com materiais de alta qualidade resulta em armas com melhores status base e mais engastes de runa.
-   **Sistema de Runas:** As runas concedem os efeitos mágicos. Elas podem ser encontradas ou criadas e vêm em diferentes categorias:
    -   **Runas Elementais:** Adicionam dano de Fogo, Gelo, etc.
    -   **Runas de Habilidade:** Modificam uma habilidade de arma (Ex: "Sua investida com a lança agora deixa um rastro de fogo").
    -   **Runas Passivas:** Concedem bônus gerais (Ex: "+10% de velocidade de ataque", "+5% de chance de esquiva").

### Nero – Progressão por Evolução

Nero evolui ao absorver **Essências Primevas**, encontradas em chefes ou locais secretos.

-   **Árvore de Habilidades:** Cada forma (Gato, Corvo, Cavalo) possui sua própria árvore. O jogador gasta pontos de essência para:
    -   Desbloquear novas habilidades ativas para a IA de Nero.
    -   Melhorar os bônus passivos de cada forma.
    -   Aprimorar os Ataques de Vínculo.
    -   *Exemplo (Árvore do Gato):* Habilidades focadas em dano crítico, sangramento e invisibilidade.
    -   *Exemplo (Árvore do Cavalo):* Habilidades focadas em armadura, resistência a controle e reflexão de dano.

---

## 5. Design de Mundo e Níveis

-   **Hub Central:** A cidade de **Forja-Luz** serve como o principal hub do jogo, onde Lucy tem sua oficina e o jogador pode interagir com NPCs.
-   **Biomas:** O mundo é dividido em grandes regiões distintas (florestas assombradas, ruínas de cristal, pântanos vulcânicos), cada uma com seus próprios inimigos, materiais e segredos.
-   **Estrutura dos Níveis:** Os níveis são desenhados à mão para garantir uma exploração significativa, mas podem conter elementos de aleatoriedade (localização de tesouros, grupos de inimigos, eventos do mundo) para manter o frescor a cada visita. A verticalidade é usada para criar arenas e pontos de vantagem, mas a câmera isométrica permanece clara.
