import 'package:flutter/material.dart';
import 'package:nft_marketplace/constants/button_accent.dart';
import 'package:nft_marketplace/constants/color_constants.dart';

class CustomOutlinedButton extends StatelessWidget {
  final String text;
  final IconData icon;
  final Color backgroundColor;
  final Color foregroundColor;
  // defines a button height following Figma design. By default 'buttonAccent = ButtonAccent.tertiary', which sets 'heigth = 46'
  final ButtonAccent buttonAccent;
  final VoidCallback onPressed;
  const CustomOutlinedButton(
      {super.key,
      required this.text,
      required this.icon,
      this.backgroundColor = ColorConstants.kBackground,
      this.foregroundColor = ColorConstants.kText,
      this.buttonAccent = ButtonAccent.secondary,
      required this.onPressed});

  double _buttonHeigthFromAccent() => buttonAccent == ButtonAccent.primary
      ? 72.0
      : buttonAccent == ButtonAccent.secondary
          ? 60.0
          : buttonAccent == ButtonAccent.tertiary
              ? 48.0
              : throw Exception('Wrong ButtonAccent value');

  @override
  Widget build(BuildContext context) {
    return OutlinedButton.icon(
      style: OutlinedButton.styleFrom(
        side: const BorderSide(color: ColorConstants.kCallToAction, width: 2.0),
        minimumSize: Size(double.infinity, _buttonHeigthFromAccent()),
        backgroundColor: backgroundColor,
        foregroundColor: foregroundColor,
        textStyle: const TextStyle(
          color: ColorConstants.kText,
        ),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20.0),
        ),
      ),
      onPressed: onPressed,
      icon: Icon(
        icon,
        color: ColorConstants.kCallToAction,
      ),
      label: Text(text),
    );
  }
}
