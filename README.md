# Circuito Liga Magic - Desafio Técnico Mobile

## Contexto

No Circuito Liga Magic, construimos produtos digitais para a comunidade de TCG. Nosso aplicativo Mobile integra diferentes serviços e precisa evoluir com segurança, clareza e foco em quem o utiliza.

Você recebeu um projeto Flutter com uma base propositalmente incompleta. Seu objetivo é concluir a experiência de consulta de cartas usando a Pokemon TCG API.

Não esperamos uma solução perfeita ou funcionalidades fora do escopo. Queremos entender como você lê um código existente, prioriza, toma decisões, lida com problemas e entrega valor.

## Instruções Gerais

Priorize o fluxo principal. 

Se algo ficar pendente, documente ao final deste README o que faria em seguida e por que.

## Como executar

```bash
flutter pub get
flutter analyze
flutter test
flutter run
```

O projeto inicia com testes falhando de proposito. Eles representam comportamentos que precisam ser implementados. Ao terminar, todos os testes existentes devem passar.

## API

Use a [Pokemon TCG API v2](https://docs.pokemontcg.io/):

- Base URL: `https://api.pokemontcg.io/v2`
- Busca: `GET /cards?q=name:{termo}&pageSize=20`

Não é necessário usar chave de API.

## O desafio

Leia os arquivos marcados com `TODO(candidato)`. Eles indicam o núcleo a ser concluído.

### 1. Concluir a integracao com a API

- Implemente a busca de cartas no `PokemonTcgApiDataSource`.
- Converta a resposta JSON para `TradingCard`.

### 2. Concluir o gerenciamento de estado

- Implemente `CardCatalogViewModel.search`.
- Atualize a interface por meio de `Provider` e `ChangeNotifier`.

### 3. Desenvolver a tela de catalogo

Desenvolva `CardCatalogScreen` e os componentes que considerar necessários. A tela deve possuir:

- Campo de busca com uma ação clara para executar a consulta.
- Estado inicial com a mensagem `Busque uma carta pelo nome`.
- Estado de carregamento.
- Lista de resultados com imagem, nome, tipo(s) e raridade quando disponível.
- Estado vazio.
- Estado de erro com opção de tentar novamente.

A interface não precisa reproduzir um layout específico: queremos avaliar suas escolhas de estrutura, legibilidade, usabilidade e composição de widgets.

### 4. Testes

- Faça os testes fornecidos passarem sem alterar suas expectativas.
- Adicione ao menos um teste relevante que você considere necessário.

## Regras de entrega

1. Crie um repositório público no GitHub a partir deste projeto.
2. Atualize a seção final deste README.
3. Envie o link do repositorio ate a data combinada.

## Decisões e limitações

Preencha antes de entregar.

- Versão do Flutter:
- Dependências adicionadas e motivo:
- Decisões técnicas:
- Testes adicionados:
- Limitações e próximos passos:
