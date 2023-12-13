// ignore_for_file: non_constant_identifier_names, constant_identifier_names

import 'package:flutter/material.dart';
enum ImageEnum {

  ULTRAS_LOGO('ultras_logo'),
  NO_IMAGE('no_image');

  final String value;
  const ImageEnum(this.value);

  String get TO_PNG => 'assets/images/$value.png'; 
  AssetImage get TO_IMAGE => AssetImage('assets/images/$value.png');
  AssetImage get GET_LOGO => AssetImage('assets/logo/$value.png');
}

