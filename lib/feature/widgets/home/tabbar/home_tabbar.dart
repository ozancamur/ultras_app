import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ultras_app/core/components/tabbar/atomic_tabbar.dart';
import 'package:ultras_app/core/constants/color/color_constants.dart';
import 'package:ultras_app/core/constants/style/text/text_style_constants.dart';

class HomeTabBar extends StatelessWidget {
  const HomeTabBar({super.key});

  @override
  Widget build(BuildContext context) {
    return AtomicTabBar(
      padding: EdgeInsets.zero,
      labelPadding: EdgeInsets.zero,
      indicatorPadding: EdgeInsets.zero,
      dividerColor: ColorConstants.white,
      overlayColor: ColorConstants.grey,
      labelColor: ColorConstants.black,
      unselectedLabelColor: ColorConstants.grey,
      labelStyle: TextStyleConstants.selectedTabBarStyle,
      unselectedLabelStyle: TextStyleConstants.unselectedTabBarStyle,
      indicator: const UnderlineTabIndicator(
        borderRadius: BorderRadius.zero,
        borderSide: BorderSide.none,
      ),
      tabs: [
        buildTab( 'LEAGUE'),
        buildTab( 'CUP'),
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
                  "S",
                  style: TextStyle(
                    color: ColorConstants.lightTextColor,
                    
                  ),
                ),
        ],
      ),
    );
  }
}
