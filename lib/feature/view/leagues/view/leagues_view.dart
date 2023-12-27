// ignore_for_file: overridden_fields, must_be_immutable
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../core/components/body/ultras_view_body.dart';
import '../../../../core/init/base/view/base_view.dart';
import '../../../widgets/leagues/tab_bar_view/leagues_tab_bar_view.dart';
import '../../../widgets/leagues/tabbar/leagues_tabbar.dart';
import '../controller/leagues_controller.dart';

class LeaguesView extends StatelessWidget {
  LeaguesView({super.key});

  LeaguesController controller = Get.put(LeaguesController());

  @override
  Widget build(BuildContext context) {
    controller.getLeaguesAndCups();
    return BaseView<LeaguesController>(
      isLoading: controller.isLoading,
      viewmodel: LeaguesController(),
      onControllerReady: (viewmodel) {
        controller = viewmodel;
      },
      pageFunctions: () async {
        await controller.getLeaguesAndCups();
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
          const Expanded(
            flex: 1,
            child: LeaguesTabBar(),
          ),
          Expanded(
            flex: 15,
            child: LeaguesTabBarView(
              controller: controller,
            ),
          ),
        ],
      ),
    );
  }
}
