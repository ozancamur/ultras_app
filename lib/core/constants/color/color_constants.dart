// ignore_for_file: non_constant_identifier_names
import 'package:flutter/material.dart';
@immutable
class ColorConstants {
  const ColorConstants._();

  static Color get ULTRAS_BLUE => const Color.fromRGBO(1, 33, 105, 1);
  static Color get ULTRAS_RED => const Color.fromRGBO(255, 79, 49, 1);
  static Color get ULTRAS_WHITE => const Color.fromRGBO(202, 188, 193, 1);
  static Color get ULTRAS_GREY => const Color.fromRGBO(60, 60, 60, 1);
  static Color get ULTRAS_CUSTOM_COLOR => const Color.fromRGBO(153, 118, 139, 1);
  
  static Color get BLACK => const Color.fromRGBO(0, 0, 0, 1);
  static Color get WHITE => const Color.fromRGBO(255, 255, 255, 1);
  static Color get GREY => const Color.fromARGB(255, 189, 189, 189);
  
  static Color get LIGHT_TEXT_COLOR => const Color.fromRGBO(220, 205, 211, 1);
  
}