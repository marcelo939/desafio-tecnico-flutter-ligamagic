class TradingCard {
  const TradingCard({
    required this.id,
    required this.name,
    required this.imageUrl,
    required this.types,
    required this.rarity,
  });

  final String id;
  final String name;
  final String imageUrl;
  final List<String> types;
  final String? rarity;
}
