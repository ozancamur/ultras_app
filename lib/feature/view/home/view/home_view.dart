// ignore_for_file: overridden_fields, must_be_immutable
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../core/components/body/ultras_view_body.dart';
import '../../../../core/init/base/view/base_view.dart';
import '../../../widgets/home/tab_bar_view/home_tab_bar_view.dart';
import '../../../widgets/home/tabbar/home_tabbar.dart';
import '../controller/home_controller.dart';

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
