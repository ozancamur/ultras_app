// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ultras_app/core/components/text/body_title_text.dart';
import 'package:ultras_app/core/constants/color/color_constants.dart';
import 'package:ultras_app/core/init/base/view/base_view.dart';
import 'package:ultras_app/feature/view/fixture/model/parent_model/fixture_response_model.dart';
import 'package:ultras_app/feature/view/fixture_detail/controller/fixture_detail_controller.dart';
import 'package:ultras_app/feature/widgets/fixture_detail/appbar/fixture_detail_appbar.dart';

class FixtureDetailView extends StatelessWidget {
  FixtureDetailView(
      {super.key, required this.model, required this.backgroundColor});

  final FixtureResponseModel model;
  final Color backgroundColor;
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
        return Scaffold(
          backgroundColor: backgroundColor,
          appBar: FixtureDetailAppBar(backgroundColor: backgroundColor),
          body: buildBodyField(),
        );
      },
    );
  }

  buildBodyField() {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: Get.width * .05),
      child: Column(
        children: [
          BodyTitleText(
            text: 'football'.toUpperCase(),
            color: ColorConstants.BLACK,
          ),
          BodyTitleText(
            text: 'match'.toUpperCase(),
            color: ColorConstants.ULTRAS_WHITE,
          )
        ],
      ),
    );
  }
}
