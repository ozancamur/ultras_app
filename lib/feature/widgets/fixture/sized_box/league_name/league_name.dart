import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ultras_app/core/constants/color/color_constants.dart';

class LeagueName extends StatelessWidget {
  const LeagueName({super.key, required this.text});

  final String text;

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
            color: ColorConstants.BLACK,
          ),
        ),
      ),
    );
  }
}