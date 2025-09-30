# Documento de Direção de Áudio – Lucy & Nero

## 1. Visão Geral

A paisagem sonora de **Lucy & Nero** deve ser imersiva, dinâmica e satisfatória. O áudio tem três pilares principais: a **trilha sonora orquestral e etérea**, os **efeitos sonoros de combate impactantes** e a **ambientação rica dos biomas**. A inspiração vem de trilhas como as de *Ori and the Will of the Wisps* pela sua emotividade e as de *Hades* pela sua energia pulsante.

---

## 2. Trilha Sonora (Música)

- **Sistema Dinâmico:** A música se adaptará ao contexto. Haverá temas calmos e misteriosos para exploração que farão uma transição suave para temas de combate energéticos quando inimigos aparecerem.
- **Temas Principais:**
    - **Hub (Auria):** Um tema acolhedor e inspirador, com sons de marteladas rítmicas, metalurgia e uma melodia suave, representando um lugar de segurança e progresso.
    - **Biomas:** Cada região terá sua própria suíte musical que reflete sua atmosfera (melancólica na floresta, tensa nos pântanos, etc.).
    - **Combate:** Músicas com percussão forte e instrumentos de corda, com variações de intensidade para combates normais e de elite.
    - **Chefes:** Temas épicos e únicos para cada chefe, com coros e orquestração grandiosa para aumentar a tensão.
    - **Instrumentação por Bioma:**
        - **Florestas:** Flautas, cordas suaves, harpas e percussão orgânica.
        - **Deserto:** Instrumentos de sopro do Oriente Médio, percussão seca e cordas com vibrato.
        - **Montanhas:** Metais, cordas graves, coros épicos e percussão forte.
        - **Pântanos:** Sons dissonantes, cordas arrastadas, percussão abafada e elementos eletrônicos sutis.
        - **Arquipélago:** Ukuleles, flautas de bambu, percussão leve e sons aquáticos.
        - **Campos Astrais:** Sintetizadores etéreos, cordas celestiais e coros angelicais.

---

## 3. Efeitos Sonoros (SFX)

A clareza e o impacto dos efeitos sonoros são cruciais para o feedback do jogador.

### Lucy
- **Armas:** Cada tipo de arma terá um conjunto de sons único. Katanas com cortes rápidos e sibilantes; Lanças com perfurações e varreduras; Arcos com o som tenso da corda e o impacto da flecha.
- **Magia:** Ativar runas produzirá um som de "power-up" mágico. Os efeitos elementais terão sons característicos (crepitar do fogo, estalar do gelo, zumbido do raio).
- **Movimento:** Sons de passos que mudam com o terreno, o som da esquiva (um "whoosh" rápido).

### Nero
- **Metamorfose:** Um som poderoso e marcante, com elementos orgânicos e mágicos, para sinalizar a troca de forma.
- **Formas:**
    - **Gato:** Passos leves, rosnados baixos, garras rasgando o ar.
    - **Corvo:** Bater de asas, grasnados, sons de ataques aéreos cortantes.
    - **Cavalo:** Galope pesado, relinchos, o som surdo de seus cascos batendo no chão.
- **Habilidades:** Ataques de vínculo terão efeitos sonoros grandiosos para combinar com seu poder visual.

### Inimigos e Ambiente
- **Inimigos:** Cada inimigo terá seus próprios sons de ataque, movimento e morte para ajudar na identificação auditiva.
- **Ambiente:** Sons de fundo para cada bioma (vento na floresta, borbulhar da lava, etc.) para criar imersão.
- **UI:** Sons minimalistas, táteis e não intrusivos para navegação em menus, coleta de itens e notificações.

### SFX Prioritários (MVP)
- **Feedback de Combate:** Golpes de Lucy (acerto/erro), habilidades de Nero (ativação/impacto), esquivas, parries.
- **Interações Essenciais:** Coleta de itens, abertura de menus, notificações de missão.
- **Alertas de Perigo:** Sons de inimigos se aproximando, armadilhas ativadas, status negativos.

---

## 4. Vozes

- **Escopo Inicial:** Para focar no gameplay, as vozes serão limitadas a grunhidos de esforço, exclamações de combate e sons de dor para Lucy e os inimigos.
- **Nero:** Terá vocalizações de criatura, variando com sua forma, mas não falará.
- **Escopo Futuro:** Diálogos completos para NPCs e momentos chave da história podem ser adicionados posteriormente.

---

## 5. Sistema de Áudio (Implementação Técnica)

- **Godot Engine:** Utilização de `AudioStreamPlayer` para reprodução de sons e músicas.
- **Grupos de Áudio:** Organização de sons em grupos (Música, SFX, UI, Vozes) para controle de volume e mixagem.
- **Mixagem Dinâmica:** Implementação de ducking e atenuação de áudio baseada na distância e eventos do jogo.
- **Spatial Audio:** Uso de `AudioStreamPlayer3D` para SFX posicionais no ambiente 3D.