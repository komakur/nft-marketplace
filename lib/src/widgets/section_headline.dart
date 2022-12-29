import 'package:flutter/material.dart';

class SectionHeadline extends StatelessWidget {
  final String heading;
  final String? subheading;
  const SectionHeadline({super.key, required this.heading, this.subheading});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          heading,
          style:
              Theme.of(context).textTheme.headlineMedium!.copyWith(height: 1.4),
        ),
        subheading == null
            ? const SizedBox.shrink()
            : Text(
                subheading!,
                style: Theme.of(context)
                    .textTheme
                    .bodyMedium!
                    .copyWith(height: 1.4),
              ),
      ],
    );
  }
}
