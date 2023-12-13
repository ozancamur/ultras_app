import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../view/home/controller/home_controller.dart';
import '../girdview_builder/home_gridview_builder.dart';

class HomeTabBarView extends StatelessWidget {
  const HomeTabBarView({super.key, required this.controller});

  final HomeController controller;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: Get.width,
      height: Get.height*.8875,
      child: TabBarView(
        children: [
          HomeGridViewBuilder(
            controller: controller,
            models: controller.leagues,
          ),
          HomeGridViewBuilder(
            controller: controller,
            models: controller.cups,
          ),
        ],
      ),
    );
  }
}
