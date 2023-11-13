import 'package:flutter/material.dart';
enum ImageConstants {

  ultrasLogo('ultras_logo'),
  noImage('no_image');

  final String value;
  const ImageConstants(this.value);

  String get toPng => 'assets/images/$value.png'; 
  AssetImage get toImage => AssetImage('assets/images/$value.png');
  AssetImage get getLogo => AssetImage('assets/logo/$value.png');
}

