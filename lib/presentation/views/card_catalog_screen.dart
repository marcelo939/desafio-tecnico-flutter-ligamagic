import 'package:desafio_flutter_mobile/presentation/viewmodels/card_catalog_view_model.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class CardCatalogScreen extends StatelessWidget {
  const CardCatalogScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // TODO(candidato): desenvolva esta tela usando componentes pequenos e reutilizaveis.
    // Ela deve conter busca, loading, lista, vazio, erro e acao de tentar novamente.
    final CardCatalogViewModel viewModel = context.watch<CardCatalogViewModel>();

    return Scaffold(
      appBar: AppBar(title: const Text('Circuito Liga Magic')),
      body: Center(
        child: Text('TODO: implemente o catalogo (${viewModel.status.name})'),
      ),
    );
  }
}
