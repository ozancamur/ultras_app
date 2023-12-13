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
      height: Get.height * .175,
      width: Get.width,
      child: Padding(
        padding: EdgeInsets.only(left: Get.width * .04, top: Get.height * .005),
        child: Text(
          text.toUpperCase().trim(),
          style: TextStyle(
            height: 0,
            fontSize: 70,
            color: color,
          ),
        ),
      ),
    );
  }
}
