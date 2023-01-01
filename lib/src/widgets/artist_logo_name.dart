import 'package:flutter/material.dart';

class ArtistLogoName extends StatelessWidget {
  final String avatarUrl;
  final String artistName;
  final MainAxisAlignment mainAxisAlignment;
  const ArtistLogoName(
      {Key? key,
      required this.avatarUrl,
      required this.artistName,
      this.mainAxisAlignment = MainAxisAlignment.start})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: mainAxisAlignment,
      children: [
        CircleAvatar(
          backgroundImage: AssetImage(avatarUrl),
          radius: 12,
        ),
        const SizedBox(
          width: 12.0,
        ),
        Text(artistName),
      ],
    );
  }
}
