import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LocaleText extends StatelessWidget {
  const LocaleText({super.key, required this.text, this.style});

  final String text;
  final TextStyle? style;

  @override
  Widget build(BuildContext context) {
    return Text(text.tr, style: style);
  }
}
