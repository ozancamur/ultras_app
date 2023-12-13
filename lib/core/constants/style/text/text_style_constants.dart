// ignore_for_file: non_constant_identifier_names

import 'package:flutter/material.dart';
import 'package:ultras_app/core/constants/string/string_constants.dart';

import '../../color/color_constants.dart';

@immutable
class TextStyleConstants {
  const TextStyleConstants._();

  // *APP
  static TextStyle get APPBAR_LEADING_BACK_TEXT_STYLE => TextStyle(
        height: 0,
        fontWeight: FontWeight.w500,
        fontSize: 14,
        color: ColorConstants.ULTRAS_GREY,
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

  static TextStyle MATCH_TIME_BOX_HOUR_TEXT_STYLE(double fontSize) =>
      TextStyle(color: ColorConstants.BLACK, fontSize: fontSize, height: 0);

  static TextStyle MATCH_TIME_BOX_MINUTE_TEXT_STYLE(double fontSize) =>
      TextStyle(
          color: ColorConstants.ULTRAS_WHITE, fontSize: fontSize, height: 0);

  // *SPLASH VIEW
  static TextStyle get LABEL_STYLE => const TextStyle(
        color: Colors.grey,
        fontSize: 13,
      );

  // * MY TEAM VIEW
  static TextStyle get CHOOSE_TEXT_STYLE => TextStyle(
        color: ColorConstants.ULTRAS_BLUE,
        fontSize: 30,
        fontWeight: FontWeight.bold,
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
        fontFamily: StringConstants.AJ_PAGLIA_FONT_STYLE,
      );

  static TextStyle get UNSELECTTED_TABBAR_STYLE => TextStyle(
        color: ColorConstants.GREY,
        fontWeight: FontWeight.normal,
        fontFamily: StringConstants.AJ_PAGLIA_FONT_STYLE,
      );

  // * MATCH VIEW

  static TextStyle BODY_TITLE_TEXT_STYLE(Color color) => TextStyle(
        height: 0,
        fontSize: 70,
        color: color,
      );

  static TextStyle get PAST_GAME_TEXT_STYLE => TextStyle(
        height: 0,
        fontSize: 20,
        color: ColorConstants.ULTRAS_CUSTOM_COLOR,
      );

  static TextStyle PAST_MATCH_TEAM_NAME_TEXT_STYLE(Color color) => TextStyle(
        color: color,
        fontSize: 15,
        height: 0,
      );

  static TextStyle get RATE_TEXT_STYLE => TextStyle(
        color: ColorConstants.BLACK,
        fontSize: 30,
        height: 0,
      );

  static TextStyle get RATE_TEAM_NAME_TEXT_STYLE => TextStyle(
        color: ColorConstants.BLACK,
        fontSize: 20,
        height: 0,
      );

  static TextStyle get MATCH_DATE_TEXT_STYLE => TextStyle(
        color: ColorConstants.ULTRAS_WHITE,
        fontSize: 30,
        height: 0,
      );
}
