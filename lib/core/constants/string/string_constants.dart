// ignore_for_file: non_constant_identifier_names

import 'package:flutter/material.dart';

@immutable
class StringConstants {
  const StringConstants._();

  static String get ULTRAS_APP_TEXT => 'Ultras App';
  static String get APPBAR_LEADING_TEXT => 'back';
  static String get APPLICATION_VERSION => 'version 1.0.0.';
  static String get AJ_PAGLIA_FONT_STYLE => 'AJ Paglia';

  // HOME VIEW
  static String get TXT_LEAGUE => 'LEAGUE';
  static String get TXT_CUP => 'CUP';
  static String get TXT_PLURAL => 'S';

  // MY TEAM VIEW
  static String get TXT_CHOOSE_COUNTRY => 'Choose your country';
  static String get TXT_CHOOSE_LEAGUE => 'Choose your league';
  static String get TXT_CHOOSE_TEAM => 'Choose your team';

  // * MATCH VIEW
  static String get TXT_DRAW => 'DRAW';
}
