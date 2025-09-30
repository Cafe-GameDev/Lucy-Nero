# Bestiário e Sistema de Monstros

Este documento detalha o sistema de monstros de Lucy & Nero, projetado para criar um mundo aberto vasto, perigoso e diversificado.

## Filosofia de Design

Em vez de uma lista estática, os monstros são gerados a partir de um sistema de **Famílias**, **Arquétipos**, **Variações de Bioma** e **Evoluções**. Isso permite que um único conceito de monstro, como um "Lobo", se manifeste de dezenas de maneiras diferentes, cada uma com seus próprios desafios e recompensas.

1.  **Família:** A classificação geral do monstro (ex: Bestas, Humanoides).
2.  **Arquétipo:** O papel do monstro em combate (ex: Bruto, Atirador, Suporte).
3.  **Variação de Bioma:** A adaptação do monstro ao seu ambiente, alterando sua aparência, habilidades e resistências.
4.  **Evolução:** Monstros que sobrevivem e acumulam poder podem evoluir para uma classe superior, tornando-se mini-chefes com novas habilidades.

---

## Família: Humanoides

Humanoides são criaturas inteligentes que vivem em estruturas sociais, como tribos ou clãs. Eles usam ferramentas, táticas de grupo e, às vezes, magia.

### Arquétipos Comuns:
*   **Batedor:** Fraco, rápido, ataca em enxames para sobrecarregar o inimigo.
*   **Atirador:** Usa arcos ou projéteis, prefere manter distância.
*   **Bruto:** Lento, resistente e com ataques poderosos. Age como a linha de frente.
*   **Conjurador (Shaman):** Usa magias de suporte (cura, buffs) ou ofensivas (debuffs, projéteis mágicos).

### Exemplo de Aplicação: A Família Goblin

| Arquétipo | Variação Padrão (Floresta) | Variação de Bioma (Montanhas) | Variação de Bioma (Deserto) | Variação de Bioma (Pântanos) |
| :--- | :--- | :--- | :--- | :--- |
| **Batedor** | **Goblin da Floresta:** Pele verde, usa clavas de madeira. | **Goblin do Gelo:** Pele pálida, pode aplicar lentidão. | **Goblin da Areia:** Pele ressecada, alta mobilidade na areia. | **Goblin do Lodo:** Pele esverdeada, se esconde na lama, ataques causam lentidão. |
| **Atirador** | **Arqueiro Goblin:** Flechas com ponta de pedra. | **Atirador de Gelo:** Lança farpas de gelo. | **Zarabataneiro:** Usa dardos envenenados com veneno de escorpião. | **Atirador de Pântano:** Lança dardos com veneno paralisante. |
| **Bruto** | **Brutamontes Goblin:** Usa um porrete de carvalho. | **Bruto do Gelo:** Carrega um martelo de pedra e gelo. | **Bruto com Mandíbula:** Usa a mandíbula de um Verme da Areia como arma. | **Bruto do Pântano:** Usa um tronco coberto de limo, ataques causam envenenamento. |
| **Conjurador** | **Shaman da Floresta:** Usa magias de cura com ervas. | **Shaman do Gelo:** Conjura barreiras de gelo defensivas. | **Shaman da Areia:** Invoca pequenos redemoinhos de areia para cegar. | **Shaman da Névoa:** Conjura névoa que confunde e envenena. |

#### **Evolução de Goblin:**
Um **Brutamontes Goblin** que sobrevive a múltiplos combates pode acumular troféus e respeito, evoluindo para um **Chefe de Guerra Goblin**.
*   **Habilidades de Evolução:** Ganha um ataque em área (Grito de Guerra) que aumenta o dano dos goblins próximos e a capacidade de arremessar goblins menores contra o jogador.

---

## Família: Bestas

Criaturas animalescas guiadas pelo instinto. Sua ameaça vem de sua força física, velocidade e adaptação predatória ao ambiente.

### Arquétipos Comuns:
*   **Predador:** Rápido, ágil, com alto dano e pouca defesa.
*   **Tanque:** Grande, lento, com alta resistência e ataques em área.
*   **Voador:** Domina os céus, difícil de alcançar com ataques corpo a corpo.
*   **Especial:** Focado em habilidades únicas como veneno, camuflagem ou magia elemental.

### Exemplo de Aplicação: A Família Lobo

| Arquétipo | Variação Padrão (Campos) | Variação de Bioma (Floresta) | Variação de Bioma (Montanhas) | Variação de Bioma (Pântanos) |
| :--- | :--- | :--- | :--- | :--- |
| **Predador** | **Lobo Cinzento:** Comportamento de matilha padrão. | **Lobo da Sombra:** Pode ficar brevemente invisível nas sombras. | **Lobo Gélido:** Seus uivos cortam o vento, ataques podem congelar. | **Lobo do Pântano:** Pele escura e úmida, ataques causam sangramento e lentidão. |

#### **Evolução de Lobo:**
O líder de uma matilha, após muitas caçadas bem-sucedidas, pode se tornar um **Lobo Alfa**. Se este Alfa absorver energia mágica de seu bioma, ele evolui para uma forma superior:
*   **Lobo Atroz da Floresta:** Uma versão maior do Lobo da Sombra, capaz de se teleportar entre as sombras para atacar.
*   **Lobo Atroz das Neves:** Um Lobo Gélido gigante cuja aura congela o chão ao seu redor.

---

## Família: Mortos-Vivos

Almas ou corpos reanimados por necromancia ou por uma maldição poderosa. São implacáveis e frequentemente imunes a efeitos mentais.

### Arquétipos Comuns:
*   **Combatente:** Mantém as habilidades marciais que tinha em vida (ex: Esqueletos com espadas).
*   **Horda:** Lentos, fracos individualmente, mas perigosos em grande número (ex: Zumbis).
*   **Espectral:** Imaterial, resistente a dano físico, ataca com toques gélidos ou maldições.

### Exemplo de Aplicação: O Arquétipo Combatente (Esqueleto)

| Variação de Bioma | Descrição | Habilidade Única |
| :--- | :--- | :--- |
| **Esqueleto (Padrão)** | Encontrado em dungeons e cemitérios. Usa espada e escudo enferrujados. | Nenhuma. |
| **Esqueleto Congelado** | Encontrado nas Montanhas de Drak'Thal. Coberto de gelo. | Seus golpes têm chance de aplicar o status "gelado", reduzindo a velocidade de ataque do jogador. |
| **Esqueleto do Pântano** | Encontrado em Nox'Thera. Coberto de lodo e musgo. | Seus ataques podem aplicar um veneno que causa dano contínuo. |
| **Esqueleto Afogado** | Encontrado em ruínas submersas ou áreas alagadas. Coberto de algas e limo. | Seus ataques podem aplicar o status "encharcado", aumentando a vulnerabilidade a dano elétrico e de gelo. |

#### **Evolução de Morto-Vivo:**
Um Esqueleto que permaneça de pé em uma área de intensa energia necrótica pode se tornar um **General Esqueleto**.
*   **Habilidades de Evolução:** Carrega uma bandeira de batalha que inspira outros mortos-vivos, aumentando sua defesa. Pode reanimar esqueletos recém-destruídos uma vez por combate.

---

## Família: Elementais

Criaturas nascidas da própria essência elemental do mundo, ou manifestações de mana pura. Podem ser guardiões de locais sagrados ou aberrações de desequilíbrios mágicos.

### Arquétipos Comuns:
*   **Guardião:** Lento, resistente, com ataques elementais poderosos e habilidades de controle de área.
*   **Fragmento:** Rápido, fraco individualmente, mas perigoso em enxames, com ataques elementais básicos.
*   **Corrompido:** Elementais que foram distorcidos por magia negra ou desequilíbrios extremos, ganhando habilidades caóticas e imprevisíveis.

### Exemplo de Aplicação: A Família Elemental da Água/Gelo

| Arquétipo | Variação Padrão (Rios/Lagos) | Variação de Bioma (Montanhas Nevadas) | Variação de Bioma (Pântanos Corrompidos) |
| :--- | :--- | :--- | :--- |
| **Guardião** | **Elemental da Água:** Corpo fluído, ataques de jatos d'água. | **Elemental do Gelo:** Corpo cristalino, ataques de estacas de gelo e congelamento. | **Elemental da Água Corrompida:** Água escura e viscosa, ataques que causam lentidão e veneno. |
| **Fragmento** | **Gota Viva:** Pequenas massas de água que se movem rapidamente. | **Estilhaço Gélido:** Pequenos fragmentos de gelo que voam e cortam. | **Lodo Necrótico:** Pequenas poças de lodo que se agarram e drenam vida. |

#### **Evolução de Elemental:**
Um **Elemental do Gelo** que absorve a energia de uma nevasca lendária pode se tornar um **Colosso Glacial**.
*   **Habilidades de Evolução:** Cria barreiras de gelo impenetráveis, invoca pequenas tempestades de neve que cegam e congelam inimigos, e seus ataques causam dano massivo em área.
