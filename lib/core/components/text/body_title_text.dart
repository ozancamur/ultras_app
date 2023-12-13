import 'package:flutter/material.dart';
import 'package:get/get.dart';

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
        style: TextStyle(
          height: 0,
          fontSize: 70,
          color: color,
        ),
      ),
    );
  }
}
