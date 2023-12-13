// ignore_for_file: non_constant_identifier_names

import 'package:flutter/material.dart';

import '../../color/color_constants.dart';

@immutable
class TextStyleConstants {
  const TextStyleConstants._();

  // * APP
  static TextStyle get APPBAR_LEADING_BACK_TEXT_STYLE => TextStyle(
        fontWeight: FontWeight.w500,
        fontSize: 14,
        color: ColorConstants.BLACK,
      );

  static TextStyle get APPBAR_TITLE_TEXT_STYLE => TextStyle(
        fontWeight: FontWeight.bold,
        fontSize: 30,
        color: ColorConstants.BLACK,
      );

  static TextStyle get AUTH_BUTTON_TEXT_STYLE => const TextStyle(
        fontSize: 20,
        fontWeight: FontWeight.bold,
      );

  // * SPLASH VIEW
  static TextStyle get LABEL_STYLE => const TextStyle(
        color: Colors.grey,
        fontSize: 13,
      );

  // * My TEAM VIEW
  static TextStyle get CHOOSE_TEXT_STYLE => TextStyle(
        color: ColorConstants.ULTRAS_BLUE,
        fontSize: 30,
        fontWeight: FontWeight.bold,
        fontFamily: '',
      );

  static TextStyle get LIST_TILE_TITLE_TEXT_STYLE => TextStyle(
        color: ColorConstants.BLACK,
        fontWeight: FontWeight.bold,
        fontSize: 16,
      );

  static TextStyle get LIST_TILE_SUBTITLE_TEXT_STYLE => TextStyle(
        color: ColorConstants.ULTRAS_GREY,
        fontWeight: FontWeight.normal,
        fontSize: 13,
      );

  // * HOME VIEW

  static TextStyle get SELECTTED_TABBAR_STYLE => TextStyle(
        color: ColorConstants.BLACK,
        fontWeight: FontWeight.normal,
        fontSize: 50,
        fontFamily: 'AJ Paglia'
      );

  static TextStyle get UNSELECTTED_TABBAR_STYLE => TextStyle(
        color: ColorConstants.GREY,
        fontWeight: FontWeight.normal,
        fontFamily: 'AJ Paglia'
      );
}
