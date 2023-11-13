import 'package:flutter/material.dart';
import 'package:ultras_app/core/constants/color/color_constants.dart';

@immutable
class TextStyleConstants {
  const TextStyleConstants._();

  // * APP
  static TextStyle get appBarLeadingBackTextStyle => TextStyle(
        fontWeight: FontWeight.bold,
        fontSize: 11,
        color: ColorConstants.ultrasGrey,
      );

  static TextStyle get appBarTitleTextStyle => TextStyle(
        fontWeight: FontWeight.bold,
        fontSize: 30,
        color: ColorConstants.black,
      );

  static TextStyle get authButtonTextStyle => const TextStyle(
        fontSize: 20,
        fontWeight: FontWeight.bold,
      );

  // * SPLASH VIEW
  static TextStyle get labelStyle => const TextStyle(
        color: Colors.grey,
        fontSize: 13,
      );

  // * My TEAM VIEW
  static TextStyle get chooseTextStyle => TextStyle(
        color: ColorConstants.ultrasAppBlue,
        fontSize: 30,
        fontWeight: FontWeight.bold,
        fontFamily: '',
      );

  static TextStyle get listTileTitleTextStyle => TextStyle(
        color: ColorConstants.black,
        fontWeight: FontWeight.bold,
        fontSize: 16,
      );

  static TextStyle get listTileSubTitleTextStyle => TextStyle(
        color: ColorConstants.ultrasGrey,
        fontWeight: FontWeight.normal,
        fontSize: 13,
      );

  // * HOME VIEW

  static TextStyle get selectedTabBarStyle => TextStyle(
        color: ColorConstants.black,
        fontWeight: FontWeight.normal,
        fontSize: 50,
        fontFamily: 'AJ Paglia'
      );

  static TextStyle get unselectedTabBarStyle => TextStyle(
        color: ColorConstants.grey,
        fontWeight: FontWeight.normal,
        fontFamily: 'AJ Paglia'
      );
}
