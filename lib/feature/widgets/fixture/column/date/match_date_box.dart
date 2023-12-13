// ignore_for_file: must_be_immutable
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../../core/constants/color/color_constants.dart';

class MatchDateColumn extends StatelessWidget {
  MatchDateColumn({super.key, required this.day, required this.monthIndex});

  final int day;
  final int monthIndex;

  Map<int, String> monthMap = {
    1: 'jan'.tr,
    2: 'feb'.tr,
    3: 'march'.tr,
    4: 'april'.tr,
    5: 'may'.tr,
    6: 'june'.tr,
    7: 'july'.tr,
    8: 'aug'.tr,
    9: 'sept'.tr,
    10: 'oct'.tr,
    11: 'novb'.tr,
    12: 'dec'.tr,
  };

  String txtDay = '';

  @override
  Widget build(BuildContext context) {

    if(day < 10) {
      txtDay = '0$day';
    } else {
      txtDay = '$day';
    }

    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          txtDay,
          style:
              TextStyle(color: ColorConstants.BLACK, fontSize: 25, height: 0),
        ),
        Text(
          '${monthMap[monthIndex]}',
          style: TextStyle(
              color: ColorConstants.BLACK.withOpacity(.5),
              fontSize: 25,
              height: 0),
        ),
      ],
    );
  }
}
