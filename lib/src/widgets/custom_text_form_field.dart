import 'package:flutter/material.dart';

class CustomTextFormField extends StatelessWidget {
  final Icon prefixIcon;
  final String hintText;

  const CustomTextFormField(
      {super.key, required this.prefixIcon, required this.hintText});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(bottom: 15.0),
      child: TextFormField(
        decoration: InputDecoration(
          filled: true,
          prefixIcon: prefixIcon,
          hintText: hintText,
        ),
      ),
    );
  }
}
