import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../core/components/text/body_title_text.dart';
import '../../../../core/constants/color/color_constants.dart';

class MatchText extends StatelessWidget {
  const MatchText({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: Get.width * .05),
      child: SizedBox(
        height: Get.height * .15,
        width: Get.width,
        child: Column(
          children: [
            BodyTitleText(
              text: 'football'.toUpperCase(),
              color: ColorConstants.BLACK,
            ),
            BodyTitleText(
              text: 'match'.toUpperCase(),
              color: ColorConstants.WHITE,
            )
          ],
        ),
      ),
    );
  }
}
