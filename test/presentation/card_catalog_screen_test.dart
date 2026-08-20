import 'package:desafio_flutter_mobile/domain/entities/trading_card.dart';
import 'package:desafio_flutter_mobile/domain/repositories/card_catalog_repository.dart';
import 'package:desafio_flutter_mobile/presentation/viewmodels/card_catalog_view_model.dart';
import 'package:desafio_flutter_mobile/presentation/views/card_catalog_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:provider/provider.dart';

void main() {
  testWidgets('exibe campo de busca e estado inicial orientando a pessoa usuaria', (WidgetTester tester) async {
    await tester.pumpWidget(
      ChangeNotifierProvider<CardCatalogViewModel>(
        create: (_) => CardCatalogViewModel(_EmptyRepository()),
        child: const MaterialApp(home: CardCatalogScreen()),
      ),
    );

    expect(find.byType(TextField), findsOneWidget);
    expect(find.text('Busque uma carta pelo nome'), findsOneWidget);
  });
}

class _EmptyRepository implements CardCatalogRepository {
  @override
  Future<List<TradingCard>> searchByName(String query) async => <TradingCard>[];
}
