import 'package:desafio_flutter_mobile/data/datasources/pokemon_tcg_api_data_source.dart';
import 'package:desafio_flutter_mobile/presentation/viewmodels/card_catalog_view_model.dart';
import 'package:desafio_flutter_mobile/presentation/views/card_catalog_screen.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class CircuitoLigaMagicApp extends StatelessWidget {
  const CircuitoLigaMagicApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<CardCatalogViewModel>(
      create: (_) => CardCatalogViewModel(PokemonTcgApiDataSource()),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Circuito Liga Magic',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: const Color(0xFF6B1E7B)),
          useMaterial3: true,
        ),
        home: const CardCatalogScreen(),
      ),
    );
  }
}
