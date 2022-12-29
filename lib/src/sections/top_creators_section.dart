import 'package:flutter/material.dart';
import 'package:nft_marketplace/constants/icons_constants.dart';
import 'package:nft_marketplace/src/widgets/custom_outlined_button.dart';
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
        Text(
          'Top Creators',
          style: Theme.of(context).textTheme.headlineMedium,
        ),
        const SizedBox(height: 10),
        const Text('Checkout Top Rated Creators on the NFT Marketplace'),
        const SizedBox(height: 40.0),
        SizedBox(
          height: (TopCreatorsData.topCreators.length + 1) * 100.0,
          child: ListView.builder(
            itemCount: TopCreatorsData.topCreators.length,
            itemBuilder: (context, index) => Padding(
              padding: const EdgeInsets.only(bottom: 20.0),
              child: TopCreatorCard(
                  place: TopCreatorsData.topCreators[index].place,
                  avatarUrl: TopCreatorsData.topCreators[index].avatarUrl,
                  creatorName: TopCreatorsData.topCreators[index].name,
                  totalSales: TopCreatorsData.topCreators[index].totalSales),
            ),
          ),
        ),
        CustomOutlinedButton(
            text: 'View Rankings',
            icon: NFTMarketplaceIcons.kRocketLaunch,
            onPressed: () {}),
      ],
    );
  }
}
