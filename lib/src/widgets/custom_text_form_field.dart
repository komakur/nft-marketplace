import 'package:flutter/material.dart';

class CustomTextFormField extends StatelessWidget {
  final Icon prefixIcon;
  final String hintText;

  const CustomTextFormField(
      {super.key, required this.prefixIcon, required this.hintText});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: InputDecoration(
        fillColor: Colors.white,
        prefixIcon: prefixIcon,
        hintText: hintText,
      ),
    );
  }
}
