import 'package:flutter/material.dart';
import 'package:nft_marketplace/constants/color_constants.dart';

class TopCreatorCard extends StatelessWidget {
  final int place;
  final String avatarUrl;
  final String creatorName;
  final double totalSales;
  const TopCreatorCard({
    super.key,
    required this.place,
    required this.avatarUrl,
    required this.creatorName,
    required this.totalSales,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(20.0),
      width: double.infinity,
      height: 100.0,
      decoration: BoxDecoration(
        color: ColorConstants.kBackgroundSecondary,
        borderRadius: BorderRadius.circular(20.0),
      ),
      child: Row(children: [
        Stack(
          clipBehavior: Clip.none,
          children: [
            Positioned(
              child: CircleAvatar(
                radius: 30.0,
                child: Image.asset(
                  avatarUrl,
                  fit: BoxFit.fill,
                ),
              ),
            ),
            Positioned(
              bottom: 37,
              right: 37,
              child: CircleAvatar(
                backgroundColor: ColorConstants.kBackground,
                radius: 15.0,
                child: Text(
                  '$place',
                  style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                        fontFamily: 'SpaceMono',
                        color: ColorConstants.kCaptionAndLabel,
                      ),
                ),
              ),
            )
          ],
        ),
        const SizedBox(width: 20.0),
        Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                creatorName,
                style: Theme.of(context).textTheme.headlineSmall,
              ),
              const SizedBox(height: 5.0),
              // TODO change to Row (or check alignment for RichText children)
              RichText(
                text: TextSpan(children: [
                  TextSpan(
                    text: 'Total Sales: ',
                    style: Theme.of(context)
                        .textTheme
                        .bodyMedium!
                        .copyWith(color: ColorConstants.kCaptionAndLabel),
                  ),
                  TextSpan(
                    text: '${totalSales.toStringAsFixed(2)} ETH',
                    style: Theme.of(context)
                        .textTheme
                        .bodyMedium!
                        .copyWith(fontFamily: 'SpaceMono'),
                  ),
                ]),
              )
            ]),
      ]),
    );
  }
}
