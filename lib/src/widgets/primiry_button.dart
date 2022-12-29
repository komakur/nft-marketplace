import 'package:flutter/material.dart';
import 'package:nft_marketplace/constants/color_constants.dart';
import 'package:nft_marketplace/constants/icons_constants.dart';

class PrimaryButton extends StatelessWidget {
  final String text;
  final IconData icon;
  final VoidCallback onPressed;

  const PrimaryButton({
    super.key,
    required this.text,
    required this.icon,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton.icon(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        minimumSize: const Size(double.infinity, 60.0),
        backgroundColor: ColorConstants.kCallToAction,
        foregroundColor: ColorConstants.kText,
        textStyle: const TextStyle(
          color: ColorConstants.kText,
        ),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20.0),
        ),
      ),
      icon: Icon(icon),
      label: Text(text),
    );
  }
}
