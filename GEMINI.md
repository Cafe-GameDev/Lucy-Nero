Sempre Responda em Portugues

# Visão Geral do Projeto: Lucy & Nero

Este projeto é um RPG de Ação (Action RPG) chamado "Lucy & Nero", desenvolvido com a Godot Engine (versão 4.5). Atualmente, o desenvolvimento está focado em uma versão 2D top-down para validação de mecânicas, com o objetivo final de ser um jogo 3D isométrico. O jogo apresenta um sistema de combate dinâmico, exploração e um sistema interligado de criação e progressão. A jogabilidade principal gira em torno da cooperação tática entre dois personagens principais: Lucy, uma forjadora, e Nero, um guardião metamorfo.

## Principais Tecnologias

*   **Motor de Jogo:** Godot Engine 4.5
*   **Linguagem de Script:** GDScript
*   **Controle de Versão:** Git

## Estrutura do Projeto

O projeto está organizado nos seguintes diretórios principais:

*   `godot/`: Contém os arquivos do projeto Godot, incluindo cenas, scripts, assets e dados.
    *   `godot/project.godot`: O arquivo principal do projeto para o Godot.
    *   `godot/scenes/`: Contém as cenas do jogo (arquivos `.tscn`).
    *   `godot/scripts/`: Contém os arquivos GDScript (arquivos `.gd`).
    *   `godot/assets/`: Contém os assets do jogo, como áudio e sprites.
    *   `godot/data/`: Contém os dados do jogo, como informações de personagens, habilidades e itens, armazenados no formato de recurso do Godot (arquivos `.tres`).
*   `docs/`: Contém os documentos de design do jogo, com informações detalhadas sobre a arte, áudio, design e aspectos técnicos do jogo.
*   `pdf/`: Contém as versões em PDF dos documentos de design do jogo.
*   `public/`: Contém os assets públicos, como imagens dos personagens.

## Compilando e Executando

Para executar o jogo, você precisa ter a Godot Engine (versão 4.5 ou superior) instalada. Você pode abrir o projeto importando o arquivo `godot/project.godot` no editor do Godot.

*   **Executando o jogo:** Pressione o botão "Play" no editor do Godot.
*   **Cena Principal:** A cena principal é `node_2d.tscn`.

## Convenções de Desenvolvimento

O projeto segue a estrutura padrão de projetos Godot. A lógica do jogo é implementada em GDScript, e os dados são armazenados no formato de recurso do Godot (`.tres` files). Essa separação de dados e lógica permite a modificação fácil do conteúdo do jogo sem alterar o código.

O design do jogo está bem documentado no diretório `docs/`, que contém informações detalhadas sobre a arte, áudio, design e aspectos técnicos do jogo. Esta documentação deve ser consultada antes de fazer qualquer alteração no jogo.