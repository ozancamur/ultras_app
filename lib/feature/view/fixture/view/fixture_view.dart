// ignore_for_file: must_be_immutable
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ultras_app/core/components/text/body_title_text.dart';
import 'package:ultras_app/core/constants/color/color_constants.dart';
import 'package:ultras_app/core/init/base/view/base_view.dart';
import 'package:ultras_app/feature/view/fixture/controller/fixture_controller.dart';
import 'package:ultras_app/feature/widgets/fixture/image/fixture_image.dart';
import 'package:ultras_app/feature/widgets/fixture/list_view_builder/league_fixture_list_view_builder.dart';

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
    //controller.getFixture(leagueID);
    return BaseView<FixtureController>(
      isLoading: controller.isLoading,
      viewmodel: FixtureController(),
      onControllerReady: (viewmodel) {
        controller = viewmodel;
      },
      pageFunctions: () async {
        //controller.getFixture(leagueID);
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
            Expanded(flex: 1, child: buildLeagueImageField()),
            Expanded(flex: 3, child: buildLeagueNameField()),
            Expanded(flex: 15, child: buildLeagueFixtureField()),
          ],
        ),
      ),
    );
  }

  buildLeagueImageField() {
    return LeagueImage(imageUrl: leagueImage);
  }

  buildLeagueNameField() {
    return BodyTitleText(text: leagueName, color: ColorConstants.BLACK,);
  }

  buildLeagueFixtureField() {
    return LeagueFixtureListViewBuilder(list: controller.fixtureList);
  }
}
