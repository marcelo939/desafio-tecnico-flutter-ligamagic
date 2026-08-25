# Circuito Liga Magic - Desafio Técnico Mobile

## Contexto

No Circuito Liga Magic, construimos produtos digitais para a comunidade de TCG. Nosso aplicativo Mobile integra diferentes serviços e precisa evoluir com segurança, clareza e foco em quem o utiliza.

Você recebeu um projeto Flutter com uma base propositalmente incompleta. Seu objetivo é concluir a experiência de consulta de cartas usando a Pokemon TCG API.

Não esperamos uma solução perfeita ou funcionalidades fora do escopo. Queremos entender como você lê um código existente, prioriza, toma decisões, lida com problemas e entrega valor.

## Tempo esperado

Dedique até 4 horas. Priorize o fluxo principal. Se algo ficar pendente, documente ao final deste README o que faria em seguida e por que.

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
- Trate respostas HTTP não bem-sucedidas e JSON inesperado.
- Mantenha o `http.Client` injetavel para que os testes nao dependam da internet.

### 2. Concluir o gerenciamento de estado

- Implemente `CardCatalogViewModel.search`.
- Trate busca valida, lista vazia e falha de rede.
- Atualize a interface por meio de `Provider` e `ChangeNotifier`.
- Evite regras de negocio e chamadas HTTP nos widgets.

### 3. Desenvolver a tela de catalogo

Desenvolva `CardCatalogScreen` e os componentes que considerar necessários. A tela deve possuir:

- Campo de busca com uma ação clara para executar a consulta.
- Estado inicial com a mensagem `Busque uma carta pelo nome`.
- Estado de carregamento.
- Lista de resultados com imagem, nome, tipo(s) e raridade quando disponível.
- Estado vazio.
- Estado de erro com opção de tentar novamente.

Use componentes pequenos, com responsabilidade clara. A interface não precisa reproduzir um layout específico: queremos avaliar suas escolhas de estrutura, legibilidade, usabilidade e composição de widgets.

### 4. Testes

- Faça os testes fornecidos passarem sem alterar suas expectativas.
- Adicione ao menos um teste relevante que você considere necessário.
- Não use rede real nos testes.

## Evolucoes opcionais

Se concluir o fluxo principal e ainda houver tempo, escolha evoluções que agreguem valor e documente a decisão:

- debounce na busca;
- paginação com proteção contra chamadas duplicadas;
- tela de detalhes;
- persistência local de favoritos;
- acessibilidade e responsividade;
- tratamento específico de timeout e ausência de conexão.

Não é esperado implementar todos os itens opcionais.

## Regras de entrega

1. Crie um repositório público no GitHub a partir deste projeto.
2. Mantenha o histórico de commits, se possível com commits pequenos e descritivos.
3. Não envie chaves, tokens, arquivos `.env` ou dados sensíveis.
4. Atualize a seção final deste README.
5. Envie o link do repositorio ate a data combinada.

## O que valorizamos

Valorizamos código simples, legível e fácil de evoluir; preocupação com a experiência da pessoa usuária; testes relevantes; curiosidade para entender o problema; e capacidade de explicar os trade-offs feitos no prazo disponível.

## Decisões e limitações

Preencha antes de entregar.

- Versão do Flutter:
- Dependências adicionadas e motivo:
- Decisões técnicas:
- Testes adicionados:
- Limitações e próximos passos:
