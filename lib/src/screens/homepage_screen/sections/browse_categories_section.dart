import 'package:flutter/material.dart';
import 'package:nft_marketplace/src/widgets/category_card.dart';
import 'package:nft_marketplace/src/widgets/section_headline.dart';

class BrowseCategoriesSection extends StatelessWidget {
  const BrowseCategoriesSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SectionHeadline(heading: 'Browse Categories'),
        GridView.count(
          crossAxisCount: MediaQuery.of(context).size.width ~/ 147.5,
          mainAxisSpacing: 20,
          crossAxisSpacing: 19.5,
          childAspectRatio: 0.71,
          shrinkWrap: true,
          children: List.generate(8, (index) => const CategoryCard()),
        ),
      ],
    );
  }
}
