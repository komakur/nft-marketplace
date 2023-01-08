import 'package:flutter/material.dart';
import 'package:nft_marketplace/constants/button_accent.dart';
import 'package:nft_marketplace/constants/color_constants.dart';

// button with emphasize and background, following Material Design, should be ElevatedButton
// https://m2.material.io/components/buttons/flutter#contained-button
class FilledButton extends StatelessWidget {
  final String text;
  final IconData icon;
  final Color backgroundColor;
  final Color foregroundColor;
  // defines a button height following Figma design. By default 'buttonAccent = ButtonAccent.tertiary', which sets 'heigth = 46'
  final ButtonAccent buttonAccent;
  final VoidCallback onPressed;

  const FilledButton({
    super.key,
    required this.text,
    required this.icon,
    this.backgroundColor = ColorConstants.kCallToAction,
    this.foregroundColor = ColorConstants.kText,
    this.buttonAccent = ButtonAccent.tertiary,
    required this.onPressed,
  });

// change constant numbers to variables
  double _buttonHeigthFromAccent() => buttonAccent == ButtonAccent.primary
      ? 72.0
      : buttonAccent == ButtonAccent.secondary
          ? 60.0
          : buttonAccent == ButtonAccent.tertiary
              ? 48.0
              : throw Exception('Wrong ButtonAccent value');

  @override
  Widget build(BuildContext context) {
    return ElevatedButton.icon(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        minimumSize: Size(double.infinity, _buttonHeigthFromAccent()),
        backgroundColor: backgroundColor,
        foregroundColor: foregroundColor,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20.0),
        ),
      ),
      icon: Icon(icon),
      label: Text(
        text,
        style: TextStyle(
          color: backgroundColor == ColorConstants.kText
              ? ColorConstants.kBackground
              : ColorConstants.kText,
        ),
      ),
    );
  }
}
