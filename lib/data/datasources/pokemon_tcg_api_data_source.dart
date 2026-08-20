import 'dart:convert';

import 'package:desafio_flutter_mobile/domain/entities/trading_card.dart';
import 'package:desafio_flutter_mobile/domain/repositories/card_catalog_repository.dart';
import 'package:http/http.dart' as http;

class PokemonTcgApiDataSource implements CardCatalogRepository {
  PokemonTcgApiDataSource({http.Client? client}) : _client = client ?? http.Client();

  static const String _baseUrl = 'https://api.pokemontcg.io/v2/cards';
  final http.Client _client;

  @override
  Future<List<TradingCard>> searchByName(String query) async {
    // TODO(candidato): implemente a chamada HTTP, valide a resposta e converta o JSON em TradingCard.
    // A API aceita: GET /cards?q=name:{termo}&pageSize=20
    throw UnimplementedError();
  }

  Uri buildSearchUri(String query) {
    return Uri.parse(_baseUrl).replace(
      queryParameters: <String, String>{
        'q': 'name:$query',
        'pageSize': '20',
      },
    );
  }

  TradingCard cardFromJson(Map<String, dynamic> json) {
    // TODO(candidato): crie o mapeamento resiliente aos campos opcionais da API.
    throw UnimplementedError();
  }
}
