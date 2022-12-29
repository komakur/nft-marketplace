import 'package:flutter/material.dart';
import 'package:nft_marketplace/constants/color_constants.dart';

class CustomOutlinedButton extends StatelessWidget {
  final String text;
  final IconData icon;
  final VoidCallback onPressed;
  const CustomOutlinedButton(
      {super.key,
      required this.text,
      required this.icon,
      required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return OutlinedButton.icon(
      style: OutlinedButton.styleFrom(
        side: const BorderSide(color: ColorConstants.kCallToAction, width: 2.0),
        minimumSize: const Size(double.infinity, 60),
        backgroundColor: ColorConstants.kBackground,
        foregroundColor: ColorConstants.kText,
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
