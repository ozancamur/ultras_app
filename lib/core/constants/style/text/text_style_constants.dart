import 'package:flutter/material.dart';

import '../../color/color_constants.dart';

@immutable
class TextStyleConstants {
  const TextStyleConstants._();

  // * APP
  static TextStyle get appBarLeadingBackTextStyle => TextStyle(
        fontWeight: FontWeight.bold,
        fontSize: 11,
        color: ColorConstants.ULTRAS_GREY,
      );

  static TextStyle get appBarTitleTextStyle => TextStyle(
        fontWeight: FontWeight.bold,
        fontSize: 30,
        color: ColorConstants.BLACK,
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
        color: ColorConstants.ULTRAS_BLUE,
        fontSize: 30,
        fontWeight: FontWeight.bold,
        fontFamily: '',
      );

  static TextStyle get listTileTitleTextStyle => TextStyle(
        color: ColorConstants.BLACK,
        fontWeight: FontWeight.bold,
        fontSize: 16,
      );

  static TextStyle get listTileSubTitleTextStyle => TextStyle(
        color: ColorConstants.ULTRAS_GREY,
        fontWeight: FontWeight.normal,
        fontSize: 13,
      );

  // * HOME VIEW

  static TextStyle get selectedTabBarStyle => TextStyle(
        color: ColorConstants.BLACK,
        fontWeight: FontWeight.normal,
        fontSize: 50,
        fontFamily: 'AJ Paglia'
      );

  static TextStyle get unselectedTabBarStyle => TextStyle(
        color: ColorConstants.GREY,
        fontWeight: FontWeight.normal,
        fontFamily: 'AJ Paglia'
      );
}
