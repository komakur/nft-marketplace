import 'package:flutter/material.dart';
import 'package:nft_marketplace/constants/icons_constants.dart';
import 'package:nft_marketplace/src/widgets/buttons/custom_outlined_button.dart';
import 'package:nft_marketplace/src/widgets/section_headline.dart';
import 'package:nft_marketplace/src/widgets/top_creator_card.dart';
import 'package:nft_marketplace/data.dart';

class TopCreatorsSection extends StatelessWidget {
  const TopCreatorsSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SectionHeadline(
          heading: 'Top creators',
          subheading: 'Checkout Top Rated Creators on the NFT Marketplace',
        ),
        ListView.separated(
          shrinkWrap: true,
          itemCount: TopCreatorsData.topCreators.length,
          separatorBuilder: (context, index) => const SizedBox(height: 20.0),
          itemBuilder: (context, index) => TopCreatorCard(
              place: TopCreatorsData.topCreators[index].place,
              avatarUrl: TopCreatorsData.topCreators[index].avatarUrl,
              creatorName: TopCreatorsData.topCreators[index].name,
              totalSales: TopCreatorsData.topCreators[index].totalSales),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 40.0),
          child: CustomOutlinedButton(
              text: 'View Rankings',
              icon: NFTMarketplaceIcons.kRocketLaunch,
              onPressed: () {}),
        ),
      ],
    );
  }
}
