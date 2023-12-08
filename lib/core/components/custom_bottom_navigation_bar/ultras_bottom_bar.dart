import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:rive/rive.dart';
import 'package:ultras_app/core/utils/rive/controller/rive_controller.dart';

import '../../constants/color/color_constants.dart';
import '../../utils/rive/enum/rive_enum.dart';

class UltrasBottomBar extends StatelessWidget {
  UltrasBottomBar({super.key});

  final controller = Get.put(RiveController());

  @override
  Widget build(BuildContext context) {
    return GetBuilder<RiveController>(
      init: RiveController(),
      initState: (state) {
        controller.homeController = SimpleAnimation(RiveEnum.animationName.toRiveString, autoplay: false);
        controller.searchController = SimpleAnimation(RiveEnum.animationName.toRiveString, autoplay: false);
        controller.settingsController = SimpleAnimation(RiveEnum.animationName.toRiveString, autoplay: false);
      },
      builder: (controller) {
        return Align(
          alignment: Alignment.bottomCenter,
          child: SafeArea(
            child: Container(
              padding: EdgeInsets.symmetric(
                  horizontal: Get.width * .07, vertical: Get.height * .01),
              margin: EdgeInsets.symmetric(
                  horizontal: Get.width * .05, vertical: Get.height * .015),
              decoration: BoxDecoration(
                color: ColorConstants.ultrasGrey,
                border: Border.all(width: 1.25,color: ColorConstants.white),
                borderRadius: BorderRadius.circular(24),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  homeIcon(RiveEnum.home.toRiveString, controller.homeController),
                  homeIcon(RiveEnum.search.toRiveString, controller.searchController),
                  homeIcon(RiveEnum.settings.toRiveString, controller.settingsController),
                  
                ],
              ),
            ),
          ),
        );
      },
    );
  }

  GestureDetector homeIcon(String iconString, RiveAnimationController<dynamic> riveControllers) {
    return GestureDetector(
      onTap: () => controller.startAnimation(riveControllers),
      child: SizedBox(
        height: Get.height * .04,
        width: Get.width * .1,
        child: RiveAnimation.asset(
          RiveEnum.asset.toRiveString,
          artboard: iconString,
          controllers: [riveControllers],
        ),
      ),
    );
  }
}
