import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../core/constants/color/color_constants.dart';
import '../../../../core/constants/style/text/text_style_constants.dart';

class RateField extends StatelessWidget {
  const RateField({
    super.key,
    required this.count,
    required this.countWho,
    required this.countText,
  });

  final int? count;
  final int? countWho;
  final String? countText;

  @override
  Widget build(BuildContext context) {
    double rate = double.parse('0.$count');

    return Column(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Container(
              height: countWho == 0
                  ? Get.height * .08
                  : countWho == 1
                      ? Get.height * .0625
                      : Get.height * .045,
              width: Get.width * rate - 2,
              decoration: BoxDecoration(
                color: countWho == 0
                    ? ColorConstants.BLACK
                    : countWho == 1
                        ? ColorConstants.ULTRAS_GREY
                        : ColorConstants.ULTRAS_CUSTOM_COLOR,
                borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(10),
                  topRight: Radius.elliptical(30, 20),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(vertical: Get.height * .0075),
              child: Text(
                '%$count',
                style: TextStyleConstants.RATE_TEXT_STYLE,
              ),
            ),
          ],
        ),
        Padding(
          padding: EdgeInsets.symmetric(vertical: Get.height * .005),
          child: Text(
            '$countText',
            style: TextStyleConstants.RATE_TEAM_NAME_TEXT_STYLE,
          ),
        )
      ],
    );
  }
}
