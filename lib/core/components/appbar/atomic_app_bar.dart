// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:kartal/kartal.dart';
import 'package:ultras_app/core/constants/color/color_constants.dart';
import 'package:ultras_app/core/constants/style/text/text_style_constants.dart';

import '../../constants/string/string_constants.dart';

class AtomicAppBar extends StatelessWidget {
  AtomicAppBar({
    this.isDisplayBack = false,
    this.backgroundColor,
    this.title,
    this.actions,
    super.key,
  });

  bool? isDisplayBack;
  Color? backgroundColor;
  Widget? title;
  List<Widget>? actions;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      surfaceTintColor: backgroundColor ?? ColorConstants.WHITE,
      elevation: 0,
      leadingWidth: context.sized.dynamicWidth(.175),
      leading: isDisplayBack == true
          ? buildBackButtonField()
          : const SizedBox.shrink(),
      title: title,
      centerTitle: true,
      actions: actions,
      backgroundColor: backgroundColor ?? ColorConstants.WHITE,
    );
  }

  buildBackButtonField() {
    return Padding(
      padding: EdgeInsets.symmetric(
        vertical: Get.context!.sized.dynamicHeight(.01375),
        horizontal: Get.context!.sized.dynamicWidth(.011),
      ),
      child: Container(
        padding: EdgeInsets.zero,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30),
          border: Border.all(
            width: 2,
            color: ColorConstants.ULTRAS_GREY,
          ),
        ),
        child: Center(
          child: TextButton(
            onPressed: () => Get.back(),
            child: Text(
              StringConstants.APPBAR_LEADING_TEXT,
              style: TextStyleConstants.APPBAR_LEADING_BACK_TEXT_STYLE,
            ),
          ),
        ),
      ),
    );
  }
}
