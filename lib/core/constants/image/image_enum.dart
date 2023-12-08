import 'package:flutter/material.dart';
enum ImageEnum {

  ultrasLogo('ultras_logo'),
  noImage('no_image');

  final String value;
  const ImageEnum(this.value);

  String get toPng => 'assets/images/$value.png'; 
  AssetImage get toImage => AssetImage('assets/images/$value.png');
  AssetImage get getLogo => AssetImage('assets/logo/$value.png');
}

