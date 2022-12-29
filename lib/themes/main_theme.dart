import 'package:flutter/material.dart';
import 'package:nft_marketplace/constants/color_constants.dart';

class MainTheme {
  static final _base = ThemeData.light().textTheme;
  static final _buttonBase = ThemeData.light().textButtonTheme;
  static final _inputTextFieldBase = ThemeData.light().inputDecorationTheme;

  static final theme = ThemeData(
    scaffoldBackgroundColor: ColorConstants.kBackground,
    fontFamily: 'WorkSans',
    textTheme: _base.copyWith(
      // h1
      displayLarge: _base.displayLarge!.copyWith(
        color: ColorConstants.kText,
        fontFamily: 'WorkSans',
        fontWeight: FontWeight.w700,
        fontSize: 67.0,
      ),
      // h2
      displayMedium: _base.displayMedium!.copyWith(
        color: ColorConstants.kText,
        fontFamily: 'WorkSans',
        fontWeight: FontWeight.w700,
        fontSize: 51.0,
      ),
      // h3
      displaySmall: _base.displaySmall!.copyWith(
        color: ColorConstants.kText,
        fontFamily: 'WorkSans',
        fontWeight: FontWeight.w700,
        fontSize: 38.0,
      ),
      // h4
      headlineMedium: _base.headlineMedium!.copyWith(
        color: ColorConstants.kText,
        fontFamily: 'WorkSans',
        fontWeight: FontWeight.w700,
        fontSize: 28.0,
      ),
      // h5
      headlineSmall: _base.headlineSmall!.copyWith(
        color: ColorConstants.kText,
        fontFamily: 'WorkSans',
        fontWeight: FontWeight.w700,
        fontSize: 22.0,
      ),
      // default text (body)
      bodyMedium: _base.bodyMedium!.copyWith(
        color: ColorConstants.kText,
        fontFamily: 'WorkSans',
        fontWeight: FontWeight.normal,
        fontSize: 16.0,
      ),
      // caption text (named in figma)
      bodySmall: _base.bodySmall!.copyWith(
        color: ColorConstants.kText,
        fontFamily: 'WorkSans',
        fontWeight: FontWeight.w400,
        fontSize: 12.0,
      ),
    ),
    inputDecorationTheme: InputDecorationTheme(
      constraints: const BoxConstraints(maxHeight: 46.0),
      hintStyle: _base.bodyMedium!.copyWith(
        color: Colors.black,
        fontFamily: 'WorkSans',
        fontWeight: FontWeight.w400,
        fontSize: 16.0,
      ),
      fillColor: ColorConstants.kText,
      prefixIconColor: ColorConstants.kLabelIcon,
      enabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(20.0),
        borderSide: const BorderSide(color: Colors.transparent),
      ),
    ),
  );
}
