# Circuito Liga Magic - Desafio Tecnico Mobile

## Contexto

No Circuito Liga Magic, construimos produtos digitais para a comunidade de TCG. Nosso aplicativo Mobile integra diferentes servicos e precisa evoluir com seguranca, clareza e foco em quem o utiliza.

Voce recebeu um projeto Flutter com uma base propositalmente incompleta. Seu objetivo e concluir a experiencia de consulta de cartas usando a Pokemon TCG API.

Nao esperamos uma solucao perfeita ou funcionalidades fora do escopo. Queremos entender como voce le um codigo existente, prioriza, toma decisoes, lida com problemas e entrega valor.

## Tempo esperado

Dedique ate 4 horas. Priorize o fluxo principal. Se algo ficar pendente, documente ao final deste README o que faria em seguida e por que.

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

Nao e necessario usar chave de API.

## O desafio

Leia os arquivos marcados com `TODO(candidato)`. Eles indicam o nucleo a ser concluido.

### 1. Concluir a integracao com a API

- Implemente a busca de cartas no `PokemonTcgApiDataSource`.
- Converta a resposta JSON para `TradingCard`.
- Trate respostas HTTP nao bem-sucedidas e JSON inesperado.
- Mantenha o `http.Client` injetavel para que os testes nao dependam da internet.

### 2. Concluir o gerenciamento de estado

- Implemente `CardCatalogViewModel.search`.
- Trate busca valida, lista vazia e falha de rede.
- Atualize a interface por meio de `Provider` e `ChangeNotifier`.
- Evite regras de negocio e chamadas HTTP nos widgets.

### 3. Desenvolver a tela de catalogo

Desenvolva `CardCatalogScreen` e os componentes que considerar necessarios. A tela deve possuir:

- Campo de busca com uma acao clara para executar a consulta.
- Estado inicial com a mensagem `Busque uma carta pelo nome`.
- Estado de carregamento.
- Lista de resultados com imagem, nome, tipo(s) e raridade quando disponivel.
- Estado vazio.
- Estado de erro com opcao de tentar novamente.

Use componentes pequenos, com responsabilidade clara. A interface nao precisa reproduzir um layout especifico: queremos avaliar suas escolhas de estrutura, legibilidade, usabilidade e composicao de widgets.

### 4. Testes

- Faca os testes fornecidos passarem sem alterar suas expectativas.
- Adicione ao menos um teste relevante que voce considere necessario.
- Nao use rede real nos testes.

## Evolucoes opcionais

Se concluir o fluxo principal e ainda houver tempo, escolha evolucoes que agreguem valor e documente a decisao:

- debounce na busca;
- paginação com protecao contra chamadas duplicadas;
- tela de detalhes;
- persistencia local de favoritos;
- acessibilidade e responsividade;
- tratamento especifico de timeout e ausencia de conexao.

Nao e esperado implementar todos os itens opcionais.

## Regras de entrega

1. Crie um repositorio publico no GitHub a partir deste projeto.
2. Mantenha o historico de commits, se possivel com commits pequenos e descritivos.
3. Nao envie chaves, tokens, arquivos `.env` ou dados sensiveis.
4. Atualize a secao final deste README.
5. Envie o link do repositorio ate a data combinada.

## O que valorizamos

Valorizamos codigo simples, legivel e facil de evoluir; preocupacao com a experiencia da pessoa usuaria; testes relevantes; curiosidade para entender o problema; e capacidade de explicar os trade-offs feitos no prazo disponivel.

## Decisoes e limitacoes

Preencha antes de entregar.

- Versao do Flutter:
- Dependencias adicionadas e motivo:
- Decisoes tecnicas:
- Testes adicionados:
- Limitacoes e proximos passos:
