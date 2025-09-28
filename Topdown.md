# 📜 GDD – Lucy & Nero (ARPG Top-Down 2D Roguelite)

## 1. Visão Geral

Nesta abordagem, **Lucy & Nero** é um ARPG Top-Down com fortes elementos de Roguelite. O foco está em combate rápido, experimentação de builds e um ciclo de jogo viciante. As referências são *Hades*, *Children of Morta* e *Moonlighter*.

A cada "run", o jogador tenta avançar o máximo possível por dungeons geradas proceduralmente. A morte é parte do ciclo, levando o jogador de volta ao hub central para gastar recursos permanentes e se preparar para a próxima tentativa, mais forte e mais sábio.

---

## 2. O Ciclo de Gameplay (Core Loop)

1.  **Preparar na Forja:** No hub central (a oficina de Lucy), o jogador escolhe uma arma inicial e uma forma inicial para Nero, definindo a base da build para a run.
2.  **Iniciar a Run:** Entrar no portal para uma dungeon procedural, composta por uma série de salas com inimigos, armadilhas e recompensas.
3.  **Combater e Coletar:** Limpar salas para receber recompensas temporárias (bênçãos de runas, moedas, vida).
4.  **Evoluir na Run:** A cada poucas salas, o jogador pode escolher um aprimoramento significativo para Lucy ou Nero, moldando a build dinamicamente.
5.  **Enfrentar o Chefe:** No final de cada bioma da dungeon, um chefe testa a build e a habilidade do jogador.
6.  **Morrer e Fortalecer:** Após a morte, o jogador retorna ao hub. Recursos temporários são perdidos, mas moedas permanentes (como Essências) são usadas para desbloquear novas armas, aprimorar as formas de Nero e comprar melhorias passivas duradouras.
7.  **Repetir:** Com novas opções e mais poder, o jogador inicia uma nova run.

---

## 3. Sistema de Combate Detalhado

O combate é ágil, reativo e focado no controle de múltiplos inimigos.

### Lucy – A Tempestade de Aço e Magia

-   **Controles Twin-Stick (Opcional):** Para armas de longo alcance como o Arco, o jogo pode usar um esquema de controle twin-stick, permitindo que o jogador se mova com um analógico e mire com o outro.
-   **Ataque, Especial e Dash:** A base do combate de Lucy. O "Ataque" é o combo principal. O "Especial" é uma habilidade única da arma com cooldown. O "Dash" é uma esquiva rápida com breve invencibilidade, que pode ser encadeada.
-   **Sistema de Bênçãos Rúnicas:** Em vez de forjar runas permanentes, Lucy encontra "Bênçãos" de runas durante a run. Elas aprimoram seus ataques de formas drásticas e sinérgicas.
    -   *Exemplo:* A Bênção de Fogo adiciona dano de queimadura ao seu ataque. A Bênção de Impacto faz com que seu especial empurre os inimigos. Se tiver ambas, seu especial pode criar uma explosão de fogo ao empurrar.

### Nero – O Companheiro Adaptável

Nero age de forma autônoma, mas sua forma e habilidades podem ser influenciadas pelas bênçãos encontradas.

-   **Comando de Alvo:** O jogador pode direcionar o foco de Nero para um inimigo específico, essencial para eliminar alvos prioritários.
-   **Troca de Forma Estratégica:** A troca de forma tem um cooldown longo, funcionando como uma decisão estratégica importante durante a run.
-   **Bênçãos de Nero:** Assim como Lucy, Nero pode receber bênçãos que modificam suas formas:
    -   **Forma Gato:** Pode ganhar a habilidade de ricochetear entre inimigos.
    -   **Forma Corvo:** Seus projéteis podem passar a envenenar ou congelar.
    -   **Forma Cavalo:** Sua investida pode deixar um rastro de cura para Lucy.
-   **Ataques de Vínculo:** Habilidades supremas que consomem um recurso raro. São extremamente poderosas e podem virar o jogo em uma sala difícil ou contra um chefe.

---

## 4. Sistema de Progressão

A progressão é dividida em duas camadas: temporária (dentro da run) e permanente (no hub).

### Progressão da Run (Temporária)

-   **Bênçãos de Runas:** O núcleo da variedade. A cada run, o jogador combina diferentes bênçãos, criando builds únicas e imprevisíveis.
-   **Aprimoramentos de Martelo:** Itens que modificam fundamentalmente como uma arma funciona (ex: "Sua katana agora dispara um projétil no final do combo").
-   **Moedas Temporárias:** Usadas para comprar itens e curas em lojas que aparecem esporadicamente na dungeon.

### Meta-Progressão (Permanente)

-   **A Forja de Lucy:** Usando essências, o jogador pode:
    -   Desbloquear novas armas para aparecerem no início da run.
    -   Comprar "Lembranças", artefatos que garantem um bônus inicial (ex: "Comece cada run com +50 de vida").
-   **O Bestiário de Nero:** Gastar essências para aprimorar as formas base de Nero, aumentando seu dano, vida ou desbloqueando uma nova habilidade passiva que estará sempre ativa.
-   **Reconstrução do Hub:** O jogador pode gastar recursos para melhorar o hub, desbloqueando novos NPCs que oferecem mais opções de meta-progressão.

---

## 5. Design de Nível

-   **Geração Procedural:** As dungeons são geradas proceduralmente, mas são construídas a partir de um conjunto de "salas" pré-desenhadas. Isso garante que cada sala seja bem projetada, mas a ordem e o layout geral da dungeon sejam sempre diferentes.
-   **Biomas:** A dungeon é dividida em biomas temáticos (Ruínas, Cavernas de Cristal, Forja Afundada), cada um com seus próprios inimigos, armadilhas e chefe final.
-   **Salas de Evento:** Além das salas de combate, existem salas especiais: lojas, fontes de cura, salas de tesouro ou encontros com NPCs que oferecem desafios ou recompensas únicas.
