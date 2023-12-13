// ignore_for_file: must_be_immutable
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';
import 'package:ultras_app/core/constants/color/color_constants.dart';
import 'package:ultras_app/core/init/base/view/base_view.dart';
import 'package:ultras_app/feature/view/fixture/controller/fixture_controller.dart';
import 'package:ultras_app/feature/view/fixture/service/fixture_service.dart';
import 'package:ultras_app/feature/widgets/fixture/card/fixture_card.dart';

class FixtureView extends StatelessWidget {
  FixtureView({
    required this.leagueID,
    required this.leagueImage,
    required this.leagueName,
    super.key,
  });

  final int leagueID;
  final String leagueImage;
  final String leagueName;

  FixtureController controller = Get.put(FixtureController());

  @override
  Widget build(BuildContext context) {
    controller.getFixture(leagueID);
    return BaseView<FixtureController>(
      isLoading: controller.isLoading,
      viewmodel: FixtureController(),
      onControllerReady: (viewmodel) {
        controller = viewmodel;
      },
      pageFunctions: () async {
        controller.getFixture(leagueID);
      },
      onPageBuilder: (context, controller) {
        return buildPageField();
      },
    );
  }

  buildPageField() {
    return Scaffold(body: buildBodyField());
  }

  buildBodyField() {
    return SafeArea(
      child: Padding(
        padding: EdgeInsets.only(
            left: Get.width * .01,
            right: Get.width * .01,
            top: Get.height * .01),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(flex: 1, child: fixtureImage()),
            Expanded(flex: 3, child: fixtureName()),
            Expanded(flex: 15, child: fixtureDetail()),
          ],
        ),
      ),
    );
  }

  fixtureImage() {
    return SizedBox(
      height: Get.height * .05,
      child: Padding(
        padding: EdgeInsets.only(left: Get.width * .04),
        child: Image.asset('assets/logo/ultras_logo.png'),
        // child: Image.network(leagueImage),
      ),
    );
  }

  fixtureName() {
    return SizedBox(
      height: Get.height * .175,
      width: Get.width,
      child: Padding(
        padding: EdgeInsets.only(left: Get.width * .04, top: Get.height * .005),
        child: Text(
          leagueName.toUpperCase().trim(),
          style: TextStyle(
            height: 0,
            fontSize: 70,
            color: ColorConstants.black,
          ),
        ),
      ),
    );
  }

  fixtureDetail() {
    return SizedBox(
      height: Get.height * .7,
      width: Get.width,
      child: ListView.builder(
        itemCount: controller.fixtureList.length,
        itemBuilder: (context, index) {
          Color backgroundColor =
              Colors.primaries[index * 50 % Colors.primaries.length];
          Color beforeColor = index == 0
              ? Colors.white
              : Colors.primaries[(index - 1) * 50 % Colors.primaries.length];
          var model = controller.fixtureList[index];
          return FixtureCard(
            backgroundColor: backgroundColor,
            beforeColor: beforeColor,
            model: model,
            dateTime: DateFormat("yyyy-MM-dd'T'HH:mm")
                .parse(model.fixture.date.toString()),
          );
        },
      ),
    );
  }
}
