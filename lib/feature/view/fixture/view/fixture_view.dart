// ignore_for_file: must_be_immutable
import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ultras_app/core/components/card/fixture_card_background/fixture_card_background.dart';
import 'package:ultras_app/core/constants/color/color_constants.dart';
import 'package:ultras_app/core/init/base/view/base_view.dart';
import 'package:ultras_app/feature/view/fixture/controller/fixture_controller.dart';

class FixtureView extends StatelessWidget {
  FixtureView({
    required this.leagueImage,
    required this.leagueName,
    super.key,
  });

  final String leagueImage;
  final String leagueName;

  FixtureController controller = Get.put(FixtureController());

  @override
  Widget build(BuildContext context) {
    //controller.getFixture(73);
    return BaseView<FixtureController>(
      isLoading: controller.isLoading,
      viewmodel: FixtureController(),
      onControllerReady: (viewmodel) {
        controller = viewmodel;
      },
      pageFunctions: () async {
        //controller.getFixture(32);
      },
      onPageBuilder: (context, controller) {
        return buildPageField();
      },
    );
  }

  buildPageField() {
    return Scaffold(
      body: buildBodyField()
    );
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
        itemCount: 2,
        itemBuilder: (context, index) {
          Color backgroundColor =
              Colors.primaries[index * 50 % Colors.primaries.length];
          Color beforeColor = index == 0
              ? Colors.white
              : Colors.primaries[(index - 1) * 50 % Colors.primaries.length];
          return fixtureCard(backgroundColor, beforeColor);
        },
      ),
    );
  }

  fixtureCard(Color backgroundColor, Color beforeColor) {
    return Stack(
      children: [
        SizedBox(
          height: Get.height * .15,
          width: Get.width,
          child: CardBackground(
            backgroundColor: backgroundColor,
            beforeColor: beforeColor,
          ),
        ),
        Padding(
          padding: EdgeInsets.symmetric(
              horizontal: Get.width * .01, vertical: Get.height * .005),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              buildFixtureCardTopField(),
              buildFixtureCardBottomField(),
            ],
          ),
        )
      ],
    );
  }

  buildFixtureCardTopField() {
    return Container(
        padding: EdgeInsets.all(Get.width * .02),
        height: Get.height * .075,
        width: Get.width * .6,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            teamImage("https://media-4.api-sports.io/football/teams/1130.png"),
            teamImage("https://media-4.api-sports.io/football/teams/1463.png"),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "06",
                  style: TextStyle(
                      color: ColorConstants.black, fontSize: 25, height: 0),
                ),
                Text(
                  "FEBRUARY",
                  style: TextStyle(
                      color: ColorConstants.black.withOpacity(.5),
                      fontSize: 25,
                      height: 0),
                ),
              ],
            )
          ],
        ));
  }

  buildFixtureCardBottomField() {
    return Container(
      padding: EdgeInsets.all(Get.width * .02),
      height: Get.height * .075,
      width: Get.width,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            width: Get.width * .3,
            child: Row(
              children: [
                Text(
                  "09",
                  style: TextStyle(color: ColorConstants.black, fontSize: 35),
                ),
                Text(
                  ":30",
                  style: TextStyle(
                      color: ColorConstants.black.withOpacity(.5),
                      fontSize: 35),
                )
              ],
            ),
          ),
          SizedBox(
              width: Get.width * .6,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  SizedBox(
                      width: Get.width * .3,
                      child: const Text(
                        "Manchester\nUnited",
                        style: TextStyle(
                          fontSize: 22.5,
                          height: 0,
                        ),
                      )),
                  SizedBox(
                      width: Get.width * .3,
                      child: const Text(
                        "F.C.\nChealse",
                        style: TextStyle(
                          fontSize: 22.5,
                          height: 0,
                        ),
                      )),
                ],
              ))
        ],
      ),
    );
  }

  teamImage(String image) {
    return DottedBorder(
      strokeWidth: 1,
      dashPattern: const [5, 3],
      child: Padding(
        padding: EdgeInsets.all(Get.height * .003),
        child: CircleAvatar(
          maxRadius: Get.height * .025,
          backgroundColor: Colors.transparent,
          child: Image.network(image),
        ),
      ),
    );
  }
}
