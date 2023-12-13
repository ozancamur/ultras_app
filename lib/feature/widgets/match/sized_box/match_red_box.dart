import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ultras_app/core/constants/color/color_constants.dart';

class MatchRedBox extends StatelessWidget {
  const MatchRedBox({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: EdgeInsets.zero,
        margin: EdgeInsets.zero,
        height: Get.height * .15,
        width: Get.width,
        color: ColorConstants.ULTRAS_RED,
      );
  }
}