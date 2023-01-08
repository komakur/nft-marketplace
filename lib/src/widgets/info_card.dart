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
      height: 157.0,
      padding: const EdgeInsets.all(20.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20.0),
        color: ColorConstants.kBackgroundSecondary,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Expanded(
            child: Image.asset(
              '/images/info_card_icon.png',
              fit: BoxFit.cover,
            ),
          ),
          Expanded(
            flex: 3,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                  child: Text(
                    heading,
                    style: Theme.of(context).textTheme.headlineSmall!,
                  ),
                ),
                Expanded(
                  child: Text(
                    description,
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
