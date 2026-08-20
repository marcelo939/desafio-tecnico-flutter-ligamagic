import 'package:desafio_flutter_mobile/domain/entities/trading_card.dart';
import 'package:desafio_flutter_mobile/domain/repositories/card_catalog_repository.dart';
import 'package:flutter/foundation.dart';

enum CardCatalogStatus { initial, loading, success, empty, error }

class CardCatalogViewModel extends ChangeNotifier {
  CardCatalogViewModel(this._repository);

  final CardCatalogRepository _repository;

  CardCatalogStatus _status = CardCatalogStatus.initial;
  List<TradingCard> _cards = <TradingCard>[];
  String? _errorMessage;

  CardCatalogStatus get status => _status;
  List<TradingCard> get cards => List<TradingCard>.unmodifiable(_cards);
  String? get errorMessage => _errorMessage;

  Future<void> search(String rawQuery) async {
    // TODO(candidato): normalize a busca, atualize os estados e trate falhas.
    // Nao deixe a interface em loading quando a requisicao falhar.
    throw UnimplementedError();
  }
}
