import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ultras_app/core/constants/style/text/text_style_constants.dart';

class BodyTitleText extends StatelessWidget {
  const BodyTitleText({
    super.key,
    required this.text,
    required this.color,
  });

  final String text;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: Get.height * .075,
      width: Get.width,
      child: Text(
        text.toUpperCase().trim(),
        style: TextStyleConstants.BODY_TITLE_TEXT_STYLE(color)
      ),
    );
  }
}
