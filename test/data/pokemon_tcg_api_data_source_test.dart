import 'package:desafio_flutter_mobile/data/datasources/pokemon_tcg_api_data_source.dart';
import 'package:http/http.dart' as http;
import 'package:http/testing.dart';
import 'package:test/test.dart';

void main() {
  test('converte a resposta da API em cartas do catalogo', () async {
    final http.Client client = MockClient((http.Request request) async {
      expect(request.url.queryParameters['q'], 'name:Pikachu');
      return http.Response('''
        {"data":[{"id":"base1-58","name":"Pikachu","images":{"small":"https://example.com/pikachu.png"},"types":["Lightning"],"rarity":"Common"}]}
      ''', 200);
    });
    final PokemonTcgApiDataSource dataSource = PokemonTcgApiDataSource(client: client);

    final result = await dataSource.searchByName('Pikachu');

    expect(result, hasLength(1));
    expect(result.single.name, 'Pikachu');
    expect(result.single.types, <String>['Lightning']);
  });

  test('lanca excecao quando a API responde com erro', () async {
    final http.Client client = MockClient((http.Request request) async => http.Response('', 500));
    final PokemonTcgApiDataSource dataSource = PokemonTcgApiDataSource(client: client);

    expect(() => dataSource.searchByName('Pikachu'), throwsA(isA<Exception>()));
  });
}
