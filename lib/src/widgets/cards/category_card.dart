import 'package:flutter/material.dart';
import 'package:nft_marketplace/constants/color_constants.dart';

class CategoryCard extends StatelessWidget {
  const CategoryCard({super.key});

  @override
  Widget build(BuildContext context) {
    // TODO change to stack? && create icons
    return Container(
      decoration: BoxDecoration(
        color: ColorConstants.kBackgroundSecondary,
        borderRadius: BorderRadius.circular(20.0),
      ),
      child: Column(mainAxisAlignment: MainAxisAlignment.start, children: [
        Expanded(
          flex: 17,
          child: Image.asset('/images/Category-Icon-1.png'),
        ),
        Expanded(
          flex: 8,
          child: Padding(
            padding: const EdgeInsets.only(left: 20.0),
            child: Align(
              alignment: Alignment.centerLeft,
              child: Text(
                'Art',
                style: Theme.of(context)
                    .textTheme
                    .bodyMedium!
                    .copyWith(fontWeight: FontWeight.w600),
              ),
            ),
          ),
        ),
      ]),
    );
  }
}
