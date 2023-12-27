import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../core/constants/string/string_constants.dart';
import '../box/rate_field.dart';

class PastGameRate extends StatelessWidget {
  const PastGameRate({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: Get.height * .175,
      width: Get.width,
      margin: EdgeInsets.symmetric(horizontal: Get.width * .01),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          const RateField(
            count: 31,
            countWho: 0,
            countText: 'MAN UN',
          ),
          RateField(
            count: 22,
            countWho: 1,
            countText: StringConstants.TXT_DRAW,
          ),
          const RateField(
            count: 47,
            countWho: 2,
            countText: 'MAN CITY',
          ),
        ],
      ),
    );
  }
}
