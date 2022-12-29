import 'package:flutter/material.dart';
import 'package:nft_marketplace/constants/color_constants.dart';
import 'package:nft_marketplace/src/widgets/artist.dart';

class TrendingCollectionSection extends StatelessWidget {
  const TrendingCollectionSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Trending Collection',
          style:
              Theme.of(context).textTheme.headlineMedium!.copyWith(height: 1.4),
        ),
        const SizedBox(height: 10),
        Text(
          'Checkout our weekly updated trending collection.',
          style: Theme.of(context).textTheme.bodyMedium!.copyWith(height: 1.4),
        ),
        const SizedBox(height: 40.0),
        const ImagePlaceholder(
          height: 315.0,
          imagePath: '/images/dog.png',
        ),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 15.0),
          child: Row(
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
        ),
        Text(
          'DSGN Animals',
          style: Theme.of(context).textTheme.headlineSmall,
        ),
        const SizedBox(height: 10),
        const Artist(avatarUrl: '/images/avatar2.png', artistName: 'MrFox'),
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
    return Container(
      height: height,
      child: Image.asset(imagePath),
    );
  }
}
