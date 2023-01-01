import 'package:flutter/material.dart';
import 'package:nft_marketplace/constants/color_constants.dart';
import 'package:nft_marketplace/src/widgets/artist_logo_name.dart';
import 'package:nft_marketplace/src/widgets/section_headline.dart';

class TrendingCollectionSection extends StatelessWidget {
  const TrendingCollectionSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SectionHeadline(
          heading: 'Trending Collection',
          subheading: 'Checkout our weekly updated trending collection.',
        ),
        const ImagePlaceholder(
          height: 315.0,
          imagePath: '/images/dog.png',
        ),
        Row(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const ImagePlaceholder(
              imagePath: '/images/cat.png',
            ),
            const ImagePlaceholder(
              imagePath: '/images/bear.png',
            ),
            Container(
              alignment: Alignment.center,
              height: 95.0,
              width: 95.0,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20.0),
                color: ColorConstants.kCallToAction,
              ),
              child: Text(
                '1025+',
                style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                    fontWeight: FontWeight.w700, fontFamily: 'SpaceMono'),
              ),
            ),
          ],
        ),
        Text(
          'DSGN Animals',
          style: Theme.of(context).textTheme.headlineSmall,
        ),
        const SizedBox(height: 10),
        const ArtistLogoName(
            avatarUrl: '/images/avatar2.png', artistName: 'MrFox'),
      ],
    );
  }
}

class ImagePlaceholder extends StatelessWidget {
  final String imagePath;
  final double height;
  const ImagePlaceholder({
    required this.imagePath,
    this.height = 95.0,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height,
      child: Image.asset(imagePath),
    );
  }
}
