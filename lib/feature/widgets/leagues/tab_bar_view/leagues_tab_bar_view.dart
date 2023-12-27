import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../view/leagues/controller/leagues_controller.dart';
import '../girdview_builder/leagues_gridview_builder.dart';

class LeaguesTabBarView extends StatelessWidget {
  const LeaguesTabBarView({super.key, required this.controller});

  final LeaguesController controller;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: Get.width,
      height: Get.height,
      child: TabBarView(
        children: [
          LeaguesGridViewBuilder(
            controller: controller,
            models: controller.leagues,
          ),
          LeaguesGridViewBuilder(
            controller: controller,
            models: controller.cups,
          ),
        ],
      ),
    );
  }
}
