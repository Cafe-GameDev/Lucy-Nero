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

### Lucy – Sistema de Progressão Cruzada

A evolução de Lucy é baseada em um sistema de "Progressão Cruzada", onde sua proficiência em combate e sua habilidade como forjadora estão interligadas. A progressão se divide em múltiplos pilares:

-   **1. Nível de Combate (Personagem):** Ao derrotar inimigos, Lucy ganha experiência (XP) e sobe de nível. Cada nível aumenta seus atributos base (Vida, Mana, Ataque, etc.) através de uma tabela de progressão, tornando-a inerentemente mais forte e resistente em combate.

-   **2. Progressão de Forja (Equipamento):** O poder dos equipamentos de Lucy evolui através de três eixos:
    -   **Materiais:** A base da forja. A descoberta de materiais superiores (ex: trocar Aço por Mithril) permite a criação de armas com melhores atributos base (mais dano, menos peso). O primeiro passo é usar o novo material em um design já conhecido.
    -   **Conhecimento (Projetos):** Lucy pode encontrar "Documentos de Forja" ou ensinamentos que desbloqueiam duas coisas:
        -   **Novos Tipos de Arma:** Aprender a forjar uma Clava, uma Besta, etc.
        -   **Refinamento de Design:** Aprender a trabalhar melhor um material que ela já conhece. Por exemplo, após encontrar um projeto, ela aprende a fazer uma "Katana de Mithril Refinada", mais leve e afiada que a versão inicial que ela criou apenas substituindo o material.
    -   **Maestria de Arma (Uso):** O uso contínuo de um tipo de arma (ex: Katanas) aumenta a "Maestria" de Lucy com ela. Essa maestria, ganha em combate, se traduz na forja, permitindo que Lucy crie e aprimore instâncias de armas daquele tipo para níveis superiores. Uma "Katana de Aço (Nível 5)" é superior a uma "Katana de Aço (Nível 1)".

-   **3. Progressão por Descoberta:** A exploração é recompensada de forma orgânica. Ao encontrar uma "Clava de Iridium" em uma ruína antiga, Lucy desbloqueia simultaneamente:
    -   O **Material** "Iridium" para uso na forja.
    -   O **Tipo de Arma** "Clava" em seus conhecimentos de forja.

Este sistema cria um ciclo de gameplay onde o combate aprimora a personagem e sua maestria, a exploração libera novos potenciais de forja, e a forja cria as ferramentas para que ela possa explorar e combater desafios ainda maiores.

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

---

## 6. Interface de Usuário (UI/UX)

*Ver `DocumentoDeArte.md` para detalhes visuais.*

- **HUD (Heads-Up Display):** Limpo e informativo, mostrando Vida, Mana, Stamina e a barra de Sinergia. As habilidades ativas e a forma atual de Nero são claramente visíveis.
- **Menus:** Telas de Inventário, Forja, Árvore de Habilidades (Nero) e Mapa. A navegação deve ser intuitiva tanto no controle quanto no teclado/mouse.
- **Feedback:** A interface deve fornecer feedback claro para ações como coleta de itens, recebimento de dano e conclusão de objetivos.

---

## 7. Direção de Áudio

*Ver `DocumentoDeAudio.md` para detalhes completos.*

- **Música:** Trilha sonora dinâmica que se adapta entre exploração e combate.
- **Efeitos Sonoros:** Feedback de combate satisfatório e sons de ambiente imersivos.

---

## 8. Narrativa

*(A ser detalhado em um documento futuro).*