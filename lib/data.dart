const topCreatorsAvatars = <String>[
  '/images/top_creator1.png',
  '/images/top_creator2.png',
  '/images/top_creator3.png',
  '/images/top_creator4.png',
  '/images/top_creator5.png',
];

const topCreatorsNames = <String>[
  'Keepitreal',
  'Digilab',
  'GravityOne',
  'Juanie',
  'BlueWhale',
];

const topCreatorsSales = <double>[
  34.53,
  32.13,
  28.93,
  25.30,
  22.22,
];

abstract class TopCreatorsData {
  static final topCreators = List.generate(
    topCreatorsNames.length,
    (index) => TopCreator(
        name: topCreatorsNames[index],
        totalSales: topCreatorsSales[index],
        avatarUrl: topCreatorsAvatars[index],
        place: index + 1),
  );
}

class TopCreator {
  final String name;
  final double totalSales;
  final String avatarUrl;
  final int place;

  TopCreator({
    required this.name,
    required this.totalSales,
    required this.avatarUrl,
    required this.place,
  });
}
