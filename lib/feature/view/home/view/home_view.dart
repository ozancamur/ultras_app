// ignore_for_file: overridden_fields
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ultras_app/core/components/custom_bottom_navigation_bar/ultras_bottom_bar.dart';
import 'package:ultras_app/core/components/loading/ultras_loading.dart';
import 'package:ultras_app/feature/view/home/controller/home_controller.dart';
import 'package:ultras_app/feature/widgets/home/tab_bar_view/home_tab_bar_view.dart';
import 'package:ultras_app/feature/widgets/home/tabbar/home_tabbar.dart';

class HomeView extends StatelessWidget {
  HomeView({super.key});

  final controller = Get.put(HomeController());

  @override
  Widget build(BuildContext context) {
    
        controller.getLeaguesAndCups();
    return GetBuilder<HomeController>(
      init: HomeController(),
      initState: (state) {
      },
      builder: (controller) {
        return DefaultTabController(
          length: 2,
          child: Scaffold(
            backgroundColor: Colors.white,
            body: observableBody(),
          ),
        );
      },
    );
  }

  Obx observableBody() {
    return Obx(
      () => controller.isLoading.value == true
          ? const UltrasLoading()
          : bodyField(),
    );
  }

  SafeArea bodyField() {
    return SafeArea(
      child: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: Get.width * .02,
        ),
        child: Stack(
          children: [
            const HomeTabBar(),
            HomeTabBarView(controller: controller,),
            UltrasBottomBar()
          ],
        ),
      ),
    );
  }
}
