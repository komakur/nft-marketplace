import 'package:flutter/material.dart';
import 'package:nft_marketplace/constants/color_constants.dart';

class InfoCard extends StatelessWidget {
  final String heading;
  final String description;
  const InfoCard({super.key, required this.heading, required this.description});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      padding: const EdgeInsets.all(20.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20.0),
        color: ColorConstants.kBackgroundSecondary,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          AspectRatio(
            aspectRatio: 1 / 1,
            child: Container(
              decoration: const BoxDecoration(
                image: DecorationImage(
                  fit: BoxFit.fill,
                  image: AssetImage(
                    '/images/info_card_icon.png',
                  ),
                ),
              ),
            ),
          ),
          // add spacing
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  heading,
                  style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                        fontWeight: FontWeight.w600,
                      ),
                ),
                const SizedBox(height: 10.0),
                Expanded(
                  child: Text(
                    description,
                    style: Theme.of(context)
                        .textTheme
                        .bodySmall!
                        .copyWith(color: ColorConstants.kText, height: 1.4),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
