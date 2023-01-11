import 'package:flutter/material.dart';
import 'package:nft_marketplace/data.dart';
import 'package:nft_marketplace/src/widgets/info_card.dart';
import 'package:nft_marketplace/src/widgets/section_headline.dart';

class HowItWorksSection extends StatelessWidget {
  const HowItWorksSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SectionHeadline(
            heading: 'How it works', subheading: 'Find out how to get started'),
        GridView.count(
          crossAxisCount: 1,
          shrinkWrap: true,
          childAspectRatio: 315 / 157,
          mainAxisSpacing: 20.0,
          children: List.generate(
            InfoCardData.info.length,
            (index) => InfoCard(
                heading: InfoCardData.info[index].heading,
                description: InfoCardData.info[index].subheading),
          ),
        ),
      ],
    );
  }
}
