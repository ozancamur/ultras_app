import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../core/constants/color/color_constants.dart';

class RedBox extends StatelessWidget {
  const RedBox({super.key});

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