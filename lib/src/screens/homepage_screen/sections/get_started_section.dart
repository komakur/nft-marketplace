import 'package:flutter/material.dart';
import 'package:nft_marketplace/constants/icons_constants.dart';
import 'package:nft_marketplace/src/widgets/artist_card.dart';
import 'package:nft_marketplace/src/widgets/primiry_button.dart';
import 'package:nft_marketplace/src/widgets/section_headline.dart';

class GetStartedSection extends StatelessWidget {
  const GetStartedSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      const SectionHeadline(
        heading: 'Discover digital art & Collect NFTs',
        subheading:
            'NFT marketplace UI created with Anima for Figma. Collect, buy and sell art from more than 20k NFT artists.',
      ),
      const ArtistCard(),
      Padding(
        padding: const EdgeInsets.symmetric(vertical: 40.0),
        child: PrimaryButton(
          text: 'Get Started',
          icon: NFTMarketplaceIcons.kRocketLaunch,
          onPressed: () {},
        ),
      ),
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: const [
          ColumnText(
            textAbove: '240k',
            textBelow: 'Total Sale',
          ),
          ColumnText(textAbove: '100k', textBelow: 'Auctions'),
          ColumnText(textAbove: '240k', textBelow: 'Artists'),
        ],
      )
    ]);
  }
}

class ColumnText extends StatelessWidget {
  final String textAbove;
  final String textBelow;
  const ColumnText({
    Key? key,
    required this.textAbove,
    required this.textBelow,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return RichText(
      text: TextSpan(children: [
        TextSpan(
          text: '$textAbove+\n',
          style: Theme.of(context)
              .textTheme
              .headlineSmall!
              .copyWith(fontFamily: 'SpaceMono'),
        ),
        TextSpan(
          text: textBelow,
          style: Theme.of(context)
              .textTheme
              .bodyMedium!
              .copyWith(fontFamily: 'SpaceMono'),
        ),
      ]),
    );
  }
}
