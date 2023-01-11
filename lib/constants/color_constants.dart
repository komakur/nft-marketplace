import 'package:flutter/material.dart';

// TODO: change names
abstract class ColorConstants {
  // background and text
  static const kBackground = Color(0xFF2B2B2B);
  static const kBackgroundSecondary = Color(0xFF3B3B3B);
  static const kCaptionAndLabel = Color(0xFF858584);

  static const kLabelIcon = Color(0xFFBDBDBD);

  static const kText = Colors.white;

  // call to action
  static const kCallToAction = Color(0xFFA259FF);

  // gradients
  static final kPurpleBlueGradiend = LinearGradient(
    begin: Alignment.bottomCenter,
    end: Alignment.topCenter,
    colors: [
      const Color(0xFFA259FF).withOpacity(1),
      const Color(0xFF377DF7).withOpacity(0.0),
    ],
  );
  static const kPurpleRedGradient =
      LinearGradient(colors: [Color(0xFFA259FF), Color(0xFFFF6250)]);
}
