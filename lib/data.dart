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

const cardsHeading = <String>[
  'Setup Your wallet',
  'Create Collection',
  'Start Earning',
];

const cardsSubheading = <String>[
  'Set up your wallet of choice. Connect it to the NFT market by clicking the wallet icon in the top right corner.',
  'Upload your work and setup your collection. Add a description, social links and floor price.',
  'Choose between auctions and fixed-price listings. Start earning by selling your NFTs or trading others.',
];

abstract class InfoCardData {
  static final info = List.generate(
    cardsHeading.length,
    (index) => InfoData(
        heading: cardsHeading[index], subheading: cardsSubheading[index]),
  );
}

class InfoData {
  final String heading;
  final String subheading;

  InfoData({required this.heading, required this.subheading});
}
