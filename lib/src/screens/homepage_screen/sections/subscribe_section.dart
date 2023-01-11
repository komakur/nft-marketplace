import 'package:flutter/material.dart';
import 'package:nft_marketplace/constants/button_accent.dart';
import 'package:nft_marketplace/constants/color_constants.dart';
import 'package:nft_marketplace/constants/icons_constants.dart';
import 'package:nft_marketplace/src/widgets/buttons/filled_button.dart';
import 'package:nft_marketplace/src/widgets/section_headline.dart';

class SubscribeSection extends StatelessWidget {
  const SubscribeSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Container(
          //TODO: check if it's okey to use that
          width: MediaQuery.of(context).size.width,
          height: 255.0,
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage('images/astronaut.png'),
            ),
          ),
        ),
        const SizedBox(height: 30),
        const SectionHeadline(
            heading: 'Join Our Weekly Digest',
            subheading:
                'Get exclusive promotions & updates straight to your inbox'),
        const SizedBox(height: 40.0),
        //TODO: extract widget
        TextField(
          keyboardType: TextInputType.emailAddress,
          // TODO: check if it's the same as hintStyle
          style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                color: ColorConstants.kBackground,
              ),
          decoration: InputDecoration(
            filled: true,
            fillColor: ColorConstants.kText,
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(20.0),
            ),
            hintText: 'Enter Your Email Address',
            hintStyle: Theme.of(context).textTheme.bodyMedium!.copyWith(
                  color: ColorConstants.kBackground,
                ),
          ),
        ),
        const SizedBox(height: 16.0),
        FilledButton(
          text: 'Subscribe',
          icon: NFTMarketplaceIcons.kEnvelop,
          onPressed: () {},
        ),
      ],
    );
  }
}
