import 'package:flutter/material.dart';
import 'package:nft_marketplace/constants/color_constants.dart';
import 'package:nft_marketplace/src/widgets/artist_logo_name.dart';

class NftCard extends StatelessWidget {
  const NftCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 402,
      decoration: BoxDecoration(
        color: ColorConstants.kBackgroundSecondary,
        borderRadius: BorderRadius.circular(20.0),
      ),
      child: Column(crossAxisAlignment: CrossAxisAlignment.stretch, children: [
        Expanded(
          child: Image.asset(
            '/images/nft1.png',
            fit: BoxFit.fill,
          ),
        ),
        Expanded(
          child: Padding(
            // TODO check padding
            padding: const EdgeInsets.all(20.0),
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              Text(
                'Distant Galaxy',
                style: Theme.of(context).textTheme.headlineSmall,
              ),
              const SizedBox(height: 5),
              const ArtistLogoName(
                avatarUrl: '/images/nft_artist.png',
                artistName: 'MoonDancer',
              ),
              const Spacer(),
              Row(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Price',
                        style: Theme.of(context).textTheme.bodySmall!.copyWith(
                              color: ColorConstants.kCaptionAndLabel,
                              fontFamily: 'SpaceMono',
                            ),
                      ),
                      const SizedBox(height: 8),
                      Text(
                        '1.63 ETH',
                        style: Theme.of(context)
                            .textTheme
                            .bodySmall!
                            .copyWith(color: ColorConstants.kText),
                      ),
                    ],
                  ),
                  const Spacer(),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Text(
                        'Highest Bid',
                        style: Theme.of(context).textTheme.bodySmall!.copyWith(
                              color: ColorConstants.kCaptionAndLabel,
                              fontFamily: 'SpaceMono',
                            ),
                      ),
                      const SizedBox(height: 8),
                      Text(
                        '0.33 ETH',
                        style: Theme.of(context)
                            .textTheme
                            .bodySmall!
                            .copyWith(color: ColorConstants.kText),
                      ),
                    ],
                  ),
                ],
              )
            ]),
          ),
        )
      ]),
    );
  }
}
