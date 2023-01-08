import 'package:flutter/material.dart';
import 'package:flutter_countdown_timer/countdown.dart';
import 'package:nft_marketplace/constants/button_accent.dart';
import 'package:nft_marketplace/constants/color_constants.dart';
import 'package:nft_marketplace/constants/icons_constants.dart';
import 'package:nft_marketplace/src/widgets/artist_logo_name.dart';
import 'package:nft_marketplace/src/widgets/buttons/filled_button.dart';

class MushroomsSection extends StatelessWidget {
  const MushroomsSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height,
      decoration: const BoxDecoration(
        image: DecorationImage(
          fit: BoxFit.cover,
          image: AssetImage('/images/mushrooms.png'),
        ),
      ),
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 30.0),
        decoration: BoxDecoration(
          gradient: ColorConstants.kPurpleBlueGradiend,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              width: 151.0,
              height: 44.0,
              decoration: BoxDecoration(
                color: ColorConstants.kBackgroundSecondary,
                borderRadius: BorderRadius.circular(20.0),
              ),
              child: const ArtistLogoName(
                artistName: 'Shroomie',
                avatarUrl: '/images/avatar_mushroom.png',
                mainAxisAlignment: MainAxisAlignment.center,
              ),
            ),
            Text('Magic Mashrooms',
                style: Theme.of(context).textTheme.displaySmall),
            Container(
              padding: const EdgeInsets.all(30.0),
              decoration: BoxDecoration(
                color: ColorConstants.kBackgroundSecondary.withOpacity(0.5),
                borderRadius: BorderRadius.circular(20.0),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Text(
                    'Auction ends in:',
                    style: Theme.of(context).textTheme.bodySmall!.copyWith(
                        fontFamily: 'SpaceMono', color: ColorConstants.kText),
                  ),
                  const SizedBox(height: 10.0),
                  Timer(
                    endDate: DateTime.now(),
                  ),
                ],
              ),
            ),
            FilledButton(
                icon: NFTMarketplaceIcons.kEye,
                backgroundColor: ColorConstants.kText,
                foregroundColor: ColorConstants.kCallToAction,
                buttonAccent: ButtonAccent.secondary,
                text: 'See NFT',
                onPressed: () {}),
          ],
        ),
      ),
    );
  }
}

class Timer extends StatefulWidget {
  final DateTime endDate;
  const Timer({
    super.key,
    required this.endDate,
  });

  @override
  State<Timer> createState() => _TimerState();
}

class _TimerState extends State<Timer> {
  final currentTime = DateTime.now();

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const TimerColumn(
          unitValue: '59',
          unitLabel: 'Hours',
        ),
        Text(
          ':',
          style: Theme.of(context)
              .textTheme
              .headlineMedium!
              .copyWith(fontFamily: 'SpaceMono'),
        ),
        const TimerColumn(
          unitValue: '59',
          unitLabel: 'Minutes',
        ),
        Text(
          ':',
          style: Theme.of(context)
              .textTheme
              .headlineMedium!
              .copyWith(fontFamily: 'SpaceMono'),
        ),
        const TimerColumn(
          unitValue: '59',
          unitLabel: 'Seconds',
        )
      ],
    );
  }
}

class TimerColumn extends StatelessWidget {
  final String unitValue;
  final String unitLabel;
  const TimerColumn({
    Key? key,
    required this.unitValue,
    required this.unitLabel,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          unitValue,
          style: Theme.of(context).textTheme.displaySmall,
        ),
        Text(
          unitLabel,
          style: Theme.of(context).textTheme.bodySmall!.copyWith(
                color: ColorConstants.kText,
                fontFamily: 'SpaceMono',
              ),
        ),
      ],
    );
  }
}
