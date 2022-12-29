import 'package:flutter/material.dart';

class Artist extends StatelessWidget {
  final String avatarUrl;
  final String artistName;
  const Artist({
    Key? key,
    required this.avatarUrl,
    required this.artistName,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
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
