// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ultras_app/core/init/base/view/base_view.dart';
import 'package:ultras_app/feature/view/fixture_detail/controller/fixture_detail_controller.dart';

class FixtureDetailView extends StatelessWidget {
  FixtureDetailView({super.key});

  FixtureDetailController controller = Get.put(FixtureDetailController());

  @override
  Widget build(BuildContext context) {
    return BaseView(
      isLoading: controller.isLoading, 
      viewmodel: FixtureDetailController(), 
      onControllerReady: (viewmodel) {
        controller = viewmodel;
      }, 
      pageFunctions: () async {}, 
      onPageBuilder: (context, viewmodel) {
        return const Scaffold(
          body: Column(
            children: [
              Text('data')
            ]
          ),
        );
      },
    );
  }
}