// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ultras_app/core/constants/style/text/text_style_constants.dart';

import '../../../../../core/constants/color/color_constants.dart';

class MatchDateColumn extends StatelessWidget {
  MatchDateColumn({super.key, required this.day, required this.monthIndex});

  final int day;
  final int monthIndex;

  Map<int, String> monthMap = {
    1: 'jan'.tr,
    2: 'feb'.tr,
    3: 'mar'.tr,
    4: 'apr'.tr,
    5: 'may'.tr,
    6: 'jun'.tr,
    7: 'jul'.tr,
    8: 'aug'.tr,
    9: 'sep'.tr,
    10: 'oct'.tr,
    11: 'nov'.tr,
    12: 'dec'.tr,
  };

  String txtDay = '';

  @override
  Widget build(BuildContext context) {
    if (day < 10) {
      txtDay = '0$day';
    } else {
      txtDay = '$day';
    }

    return SizedBox(
      width: Get.width * .225,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            txtDay,
            style: TextStyle(
                color: ColorConstants.ULTRAS_WHITE, fontSize: 30, height: 0),
          ),
          Text(
            '${monthMap[monthIndex]}',
            style: TextStyleConstants.MATCH_DATE_TEXT_STYLE,
          ),
        ],
      ),
    );
  }
}
