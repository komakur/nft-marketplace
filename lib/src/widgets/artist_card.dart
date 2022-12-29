import 'package:flutter/material.dart';
import 'package:nft_marketplace/constants/color_constants.dart';
import 'package:nft_marketplace/src/widgets/artist.dart';

class ArtistCard extends StatelessWidget {
  const ArtistCard({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 315.0,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20.0),
        color: ColorConstants.kBackgroundSecondary,
      ),
      child: Column(children: [
        Expanded(
          flex: 13,
          child: Container(
            decoration: const BoxDecoration(
              image: DecorationImage(
                fit: BoxFit.fill,
                image: AssetImage('/images/get_started_img.png'),
              ),
            ),
          ),
        ),
        Expanded(
          flex: 7,
          child: Container(
            margin: const EdgeInsets.symmetric(vertical: 22, horizontal: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Space Walking',
                  style: Theme.of(context).textTheme.headlineSmall,
                ),
                const SizedBox(height: 10.0),
                const Artist(
                  artistName: 'Animakid',
                  avatarUrl: '/images/avatar.png',
                ),
              ],
            ),
          ),
        )
      ]),
    );
  }
}
