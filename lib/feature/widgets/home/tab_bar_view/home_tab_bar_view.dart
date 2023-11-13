import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ultras_app/feature/view/home/controller/home_controller.dart';
import 'package:ultras_app/feature/widgets/home/girdview_builder/home_gridview_builder.dart';

class HomeTabBarView extends StatelessWidget {
  const HomeTabBarView({super.key, required this.controller});

  final HomeController controller;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: Get.height * .04),
      child: SizedBox(
        width: Get.width,
        height: Get.height,
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
      ),
    );
  }
}
