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
            heading: 'How it Works', subheading: 'Find out how to get started'),
        InfoCard(
            heading: InfoCardData.info[0].heading,
            description: InfoCardData.info[0].subheading)
      ],
    );
  }
}
