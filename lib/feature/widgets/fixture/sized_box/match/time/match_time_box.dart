import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ultras_app/core/constants/color/color_constants.dart';

class MatchTimeBox extends StatelessWidget {
  MatchTimeBox({
    super.key,
    required this.hour,
    required this.minute,
  });

  final int hour;
  final int minute;

  String txtHour = '';
  String txtMinute = '';
  

  @override
  Widget build(BuildContext context) {
    if(hour < 10) {
      txtHour = '0$hour';
    } else {
      txtHour = '$hour';
    }
    if(minute < 10) {
      txtMinute = '0$minute';
    } else {
      txtMinute = '$minute';
    }
    return SizedBox(
      width: Get.width * .3,
      child: Row(
        children: [
          Text(
            txtHour,
            style: TextStyle(color: ColorConstants.BLACK, fontSize: 35),
          ),
          Text(
            ":$txtMinute",
            style: TextStyle(
                color: ColorConstants.BLACK.withOpacity(.5), fontSize: 35),
          )
        ],
      ),
    );
  }
}
