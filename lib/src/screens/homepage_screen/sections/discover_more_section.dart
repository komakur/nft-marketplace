import 'package:flutter/material.dart';
import 'package:nft_marketplace/constants/icons_constants.dart';
import 'package:nft_marketplace/src/widgets/buttons/custom_outlined_button.dart';
import 'package:nft_marketplace/src/widgets/cards/nft_card.dart';
import 'package:nft_marketplace/src/widgets/section_headline.dart';

class DiscoverMoreSection extends StatelessWidget {
  const DiscoverMoreSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SectionHeadline(
            heading: 'Discover More NFTs',
            subheading: 'Explore new trending NFTs'),
        GridView.count(
          crossAxisCount: MediaQuery.of(context).size.width ~/ 315.0,
          shrinkWrap: true,
          mainAxisSpacing: 20.0,
          childAspectRatio: 0.783582,
          children: const [
            NftCard(),
            NftCard(),
            NftCard(),
          ],
        ),
        const SizedBox(height: 40.0),
        CustomOutlinedButton(
          text: 'See All',
          icon: NFTMarketplaceIcons.kEye,
          onPressed: () {},
        ),
      ],
    );
  }
}
