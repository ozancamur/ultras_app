// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:kartal/kartal.dart';
import 'package:ultras_app/core/constants/color/color_constants.dart';
import 'package:ultras_app/core/constants/style/text/text_style_constants.dart';

import '../../constants/string/string_constants.dart';

class AtomicAppBar extends StatelessWidget {
  AtomicAppBar({
    required this.isDisplayBack,
    this.title,
    this.actions,
    super.key,
  });

  bool isDisplayBack;
  Widget? title;
  List<Widget>? actions;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      surfaceTintColor: ColorConstants.white,
      elevation: 0,
      leadingWidth: context.sized.dynamicWidth(.175),
      leading: isDisplayBack == true ? backMethod() : const SizedBox.shrink(),
      title: title,
      centerTitle: true,
      actions: actions,
      backgroundColor: ColorConstants.white,
      
    );
  }

  Padding backMethod( ) {
    return Padding(
        padding: EdgeInsets.symmetric(
            vertical: Get.context!.sized.dynamicHeight(.0125),
            horizontal: Get.context!.sized.dynamicWidth(.01)),
        child: Container(
          padding: EdgeInsets.zero,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30),
              border: Border.all(
                width: 1,
                color: Colors.black,
              )),
          child: TextButton(
            onPressed: () => Get.back(),
            child: Text(
              StringConstants.appBarLeadingText,
              style: TextStyleConstants.appBarLeadingBackTextStyle,
            ),
          ),
        ),
      );
  }
}
