import 'package:flutter/material.dart';
import 'package:nft_marketplace/constants/color_constants.dart';
import 'package:nft_marketplace/constants/icons_constants.dart';
import 'package:nft_marketplace/src/sections/browse_categories_section.dart';
import 'package:nft_marketplace/src/sections/discover_more_section.dart';
import 'package:nft_marketplace/src/sections/get_started_section.dart';
import 'package:nft_marketplace/src/sections/mushrooms_section.dart';
import 'package:nft_marketplace/src/sections/top_creators_section.dart';
import 'package:nft_marketplace/src/sections/trending_collection_section.dart';

class Homepage extends StatelessWidget {
  const Homepage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorConstants.kBackground,
      appBar: AppBar(
        backgroundColor: ColorConstants.kBackground,
        automaticallyImplyLeading: false,
        titleSpacing: 0,
        title: Padding(
          padding: const EdgeInsets.only(left: 30.0),
          child: Row(
            children: [
              const Icon(
                NFTMarketplaceIcons.kStoreFront,
                color: ColorConstants.kCallToAction,
              ),
              const SizedBox(
                width: 12,
              ),
              Text(
                'NFT Maketplace',
                style: Theme.of(context).textTheme.bodySmall!.copyWith(
                    fontFamily: 'WorkSans',
                    fontSize: 15.0,
                    fontWeight: FontWeight.w500),
              ),
            ],
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(NFTMarketplaceIcons.kList),
          ),
          const SizedBox(
            width: 30.0,
          )
        ],
      ),
      body: ListView(
        children: const [
          Padding(
            padding: EdgeInsets.symmetric(vertical: 40.0, horizontal: 30.0),
            child: GetStartedSection(),
          ),
          Padding(
            padding: EdgeInsets.symmetric(vertical: 40.0, horizontal: 30.0),
            child: TrendingCollectionSection(),
          ),
          Padding(
            padding: EdgeInsets.symmetric(vertical: 40.0, horizontal: 30.0),
            child: TopCreatorsSection(),
          ),
          Padding(
            padding: EdgeInsets.symmetric(vertical: 40.0, horizontal: 30.0),
            child: BrowseCategoriesSection(),
          ),
          Padding(
            padding: EdgeInsets.symmetric(vertical: 40.0, horizontal: 30.0),
            child: DiscoverMoreSection(),
          ),
          MushroomsSection(),
        ],
      ),
    );
  }
}
