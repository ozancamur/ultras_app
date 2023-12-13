// ignore_for_file: overridden_fields, must_be_immutable
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ultras_app/core/components/custom_bottom_navigation_bar/ultras_bottom_bar.dart';
import 'package:ultras_app/core/components/body/ultras_view_body.dart';
import 'package:ultras_app/core/init/base/view/base_view.dart';
import 'package:ultras_app/feature/view/home/controller/home_controller.dart';
import 'package:ultras_app/feature/widgets/home/tab_bar_view/home_tab_bar_view.dart';
import 'package:ultras_app/feature/widgets/home/tabbar/home_tabbar.dart';

class HomeView extends StatelessWidget {
  HomeView({super.key});

  HomeController controller = Get.put(HomeController());

  @override
  Widget build(BuildContext context) {
    //controller.getLeaguesAndCups();
    return BaseView<HomeController>(
      isLoading: controller.isLoading,
      viewmodel: HomeController(),
      onControllerReady: (viewmodel) {
        controller = viewmodel;
      },
      pageFunctions: () async {
        //await controller.getLeaguesAndCups();
      },
      onPageBuilder: (context, controller) {
        return buildPageField();
      },
    );
  }

  buildPageField() {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        backgroundColor: Colors.white,
        body: buildBodyField(),
        //bottomNavigationBar: UltrasBottomBar(),
      ),
    );
  }

  buildBodyField() {
    return UltrasViewBody(
      child: Column(
        children: [
          const HomeTabBar(),
          HomeTabBarView(
            controller: controller,
          ),
        ],
      ),
    );
  }
}
