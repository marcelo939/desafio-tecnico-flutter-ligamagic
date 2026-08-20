import 'package:desafio_flutter_mobile/domain/entities/trading_card.dart';
import 'package:desafio_flutter_mobile/domain/repositories/card_catalog_repository.dart';
import 'package:desafio_flutter_mobile/presentation/viewmodels/card_catalog_view_model.dart';
import 'package:test/test.dart';

void main() {
  test('publica sucesso quando encontra cartas', () async {
    final CardCatalogViewModel viewModel = CardCatalogViewModel(_FakeRepository());

    await viewModel.search('Pikachu');

    expect(viewModel.status, CardCatalogStatus.success);
    expect(viewModel.cards.single.name, 'Pikachu');
  });

  test('publica vazio quando a busca nao retorna cartas', () async {
    final CardCatalogViewModel viewModel = CardCatalogViewModel(_FakeRepository(cards: <TradingCard>[]));

    await viewModel.search('Carta inexistente');

    expect(viewModel.status, CardCatalogStatus.empty);
  });

  test('publica erro sem propagar a excecao do repositorio', () async {
    final CardCatalogViewModel viewModel = CardCatalogViewModel(_FakeRepository(shouldFail: true));

    await viewModel.search('Pikachu');

    expect(viewModel.status, CardCatalogStatus.error);
    expect(viewModel.errorMessage, isNotEmpty);
  });
}

class _FakeRepository implements CardCatalogRepository {
  _FakeRepository({List<TradingCard>? cards, this.shouldFail = false})
      : _cards = cards ??
            const <TradingCard>[
              TradingCard(
                id: 'base1-58',
                name: 'Pikachu',
                imageUrl: 'https://example.com/pikachu.png',
                types: <String>['Lightning'],
                rarity: 'Common',
              ),
            ];

  final List<TradingCard> _cards;
  final bool shouldFail;

  @override
  Future<List<TradingCard>> searchByName(String query) async {
    if (shouldFail) {
      throw Exception('Falha de rede');
    }
    return _cards;
  }
}
