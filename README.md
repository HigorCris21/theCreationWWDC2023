# The Creation

## Visão Geral

**The Creation** é um aplicativo educacional interativo desenvolvido em **Swift Playgrounds**, utilizando **SwiftUI**. A aplicação apresenta uma linha do tempo visual dos sete dias da criação, oferecendo uma experiência intuitiva e envolvente para exploração do conteúdo.

O projeto combina **narrativa visual**, **interação do usuário** e **design responsivo**, com o objetivo de tornar o conteúdo acessível de forma estruturada e didática.

---

## Objetivo

O aplicativo foi desenvolvido com os seguintes propósitos:

- Apresentar uma **visualização interativa da linha do tempo da criação**
- Permitir navegação dinâmica entre os dias
- Oferecer uma experiência **educativa e visualmente intuitiva**
- Demonstrar o uso do **ecossistema Swift** na construção de aplicações interativas

---

## Funcionalidades

- Controle interativo por meio de um **slider**, que avança pelos dias da criação
- Renderização dinâmica dos elementos conforme a interação do usuário
- Visualização detalhada de cada dia
- Layout adaptativo para **orientação horizontal e vertical**
- Fluxo de navegação estruturado:
  - Splash Screen → Tela Inicial → Linha do Tempo → Detalhes → Finalização
- Integração de elementos visuais com conteúdo descritivo

---

## Arquitetura

O projeto segue uma estrutura inspirada em **MVVM**, com separação entre dados, interface e estado.

### Models

- `CreationDayModel`
  - Representa cada dia da criação
  - Contém:
    - Nome da imagem
    - Identificador visual do dia
    - Texto descritivo
    - Referência de conteúdo detalhado

- `DaysArrayModel`
  - Responsável por inicializar e armazenar os dados dos dias
  - Atua como provedor local de dados

---

### Views

- `ContentView`
  - Container raiz com configuração de navegação

- `SplashScreenView`
  - Tela inicial do aplicativo

- `OpeningView`
  - Tela introdutória

- `MainView`
  - Núcleo da aplicação
  - Contém:
    - Linha do tempo
    - Controle de navegação (slider)
    - Renderização dinâmica dos dias

- `TimelineView`
  - Representação visual da progressão dos dias
  - Exibe marcadores de forma condicional

- `CreationDayFiguresView` / `CreationDayPortrait`
  - Gerenciam layout para diferentes orientações de tela

- `CreationDayTopView` / `CreationDayBottomView`
  - Componentes reutilizáveis para exibição dos dias

- `DetailsDaysView`
  - Exibe os detalhes de cada dia selecionado

- `FinishView`
  - Tela final com opção de reinício

- `HelpView`
  - Tela de ajuda/instruções

---

## Fluxo de Interação

1. Usuário inicia na **Splash Screen**
2. Navega para a **Tela Inicial**
3. Acessa a **Linha do Tempo**
4. Utiliza o **slider** para explorar os dias
5. Seleciona um dia → abre a **Tela de Detalhes**
6. Finaliza ou reinicia a experiência

---

## Destaques Técnicos

- Desenvolvido inteiramente com **SwiftUI**
- Uso de:
  - `@State` para gerenciamento de estado local
  - `@Binding` para compartilhamento de estado entre views
- Interface dinâmica baseada em:
  - Valor do slider (`Double`)
  - Renderização condicional de componentes
- Uso de `GeometryReader` para responsividade
- Escalonamento proporcional de elementos visuais

---

## Decisões de Design

- Foco em **clareza visual e simplicidade**
- Uso de posicionamento espacial para simular uma linha do tempo
- Interface minimalista centrada no conteúdo
- Componentização para reutilização de elementos


---

## Melhorias Futuras

- Estruturação completa em **MVVM**
- Separação de lógica de negócio em ViewModels
- Internacionalização do conteúdo
- Integração com fontes externas (API ou banco local)
- Refatoração do layout para maior flexibilidade
- Inclusão de acessibilidade (VoiceOver, Dynamic Type)

---

## Tecnologias Utilizadas

- Swift
- SwiftUI
- Swift Playgrounds

---

## Autor

Desenvolvido por **Higor Crisostomo**
