import 'package:desafio_flutter_mobile/domain/entities/trading_card.dart';

abstract interface class CardCatalogRepository {
  Future<List<TradingCard>> searchByName(String query);
}
