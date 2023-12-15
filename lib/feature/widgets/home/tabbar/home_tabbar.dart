import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../core/components/tabbar/atomic_tabbar.dart';
import '../../../../core/constants/color/color_constants.dart';
import '../../../../core/constants/string/string_constants.dart';
import '../../../../core/constants/style/text/text_style_constants.dart';

class HomeTabBar extends StatelessWidget {
  const HomeTabBar({super.key});

  @override
  Widget build(BuildContext context) {
    return AtomicTabBar(
      padding: EdgeInsets.zero,
      labelPadding: EdgeInsets.zero,
      indicatorPadding: EdgeInsets.zero,
      dividerColor: ColorConstants.WHITE,
      overlayColor: ColorConstants.GREY,
      labelColor: ColorConstants.BLACK,
      unselectedLabelColor: ColorConstants.GREY,
      labelStyle: TextStyleConstants.SELECTTED_TABBAR_STYLE,
      unselectedLabelStyle: TextStyleConstants.UNSELECTTED_TABBAR_STYLE,
      indicator: const UnderlineTabIndicator(
        borderRadius: BorderRadius.zero,
        borderSide: BorderSide.none,
      ),
      tabs: [
        buildTab(StringConstants.TXT_LEAGUE),
        buildTab(StringConstants.TXT_CUP),
      ],
    );
  }

  buildTab(String text) {
    return Container(
      height: Get.height*.05,
      width: Get.width*.5,
      padding: EdgeInsets.zero,
      margin: EdgeInsets.zero,
      decoration: const BoxDecoration(
        border: Border(bottom: BorderSide(width: 1, ),),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: Text(text),
          ),
          Text(
                  StringConstants.TXT_PLURAL,
                  style: TextStyle(
                    color: ColorConstants.LIGHT_TEXT_COLOR,
                    
                  ),
                ),
        ],
      ),
    );
  }
}
