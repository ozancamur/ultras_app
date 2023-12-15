// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../core/components/body/ultras_view_body.dart';
import '../../../../core/constants/color/color_constants.dart';
import '../../../../core/constants/string/string_constants.dart';
import '../../../../core/constants/style/text/text_style_constants.dart';
import '../../../../core/init/base/view/base_view.dart';
import '../../../widgets/match/appbar/match_appbar.dart';
import '../../../widgets/match/card/match_card.dart';
import '../../../widgets/match/sized_box/match_red_box.dart';
import '../../../widgets/match/sized_box/past_match_box.dart';
import '../../../widgets/match/text/match_text.dart';
import '../../fixture/model/parent_model/fixture_response_model.dart';
import '../controller/match_controller.dart';

class MatchView extends StatelessWidget {
  MatchView({super.key, required this.model, required this.backgroundColor});

  final FixtureResponseModel model;
  final Color backgroundColor;

  MatchController controller = Get.find<MatchController>();

  @override
  Widget build(BuildContext context) {
    return BaseView(
      isLoading: controller.isLoading,
      viewmodel: MatchController(),
      onControllerReady: (viewmodel) {
        controller = viewmodel;
      },
      pageFunctions: () async {},
      onPageBuilder: (context, viewmodel) {
        return Scaffold(
          backgroundColor: backgroundColor,
          appBar: MatchAppBar(backgroundColor: backgroundColor),
          body: UltrasViewBody(
            child: buildBodyField(),
          ),
        );
      },
    );
  }

  buildBodyField() {
    return SizedBox(
      height: Get.height,
      width: Get.width,
      child: Stack(
        children: [
          buildRedBoxField(),
          buildMatchCardField(),
          const MatchText(),
          buildPastGameTextField(),
          buildPastGameRateField()
        ],
      ),
    );
  }

  buildRedBoxField() {
    return Positioned.fill(top: Get.height * .65, child: const MatchRedBox());
  }

  buildMatchCardField() {
    return Positioned.fill(
      top: Get.height * .5,
      child: MatchCard(
        backgroundColor: ColorConstants.WHITE,
        beforeColor: backgroundColor,
        model: model,
        dateTime: DateTime.now(),
      ),
    );
  }

  buildPastGameTextField() {
    return Positioned.fill(
      top: Get.height * .15,
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: Get.width * .05),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'LAST 10 MATCH',
              style: TextStyleConstants.PAST_GAME_TEXT_STYLE,
            ),
            SizedBox(
              height: Get.height * .1,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  PastMatchBox(
                      teamName: 'manchester united',
                      winCount: 4,
                      color: ColorConstants.BLACK),
                  PastMatchBox(
                      teamName: 'manchester city',
                      winCount: 6,
                      color: ColorConstants.ULTRAS_CUSTOM_COLOR)
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  buildPastGameRateField() {
    return Positioned(
      top: Get.height * .275,
      child: Container(
        height: Get.height * .175,
        width: Get.width,
        margin: EdgeInsets.symmetric(horizontal: Get.width * .01),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            buildRateField(31, 0, 'MAN UN'),
            buildRateField(22, 1, StringConstants.TXT_DRAW),
            buildRateField(47, 2, 'MAN CITY'),
          ],
        ),
      ),
    );
  }

  buildRateField(
    int count,
    int countWho,
    String countText,
  ) {
    double rate = double.parse('0.$count');
    return Column(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Container(
              height: countWho == 0
                  ? Get.height * .08
                  : countWho == 1
                      ? Get.height * .0625
                      : Get.height * .045,
              width: Get.width * rate - 2,
              decoration: BoxDecoration(
                color: countWho == 0
                    ? ColorConstants.BLACK
                    : countWho == 1
                        ? ColorConstants.ULTRAS_GREY
                        : ColorConstants.ULTRAS_CUSTOM_COLOR,
                borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(10),
                  topRight: Radius.elliptical(30, 20),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(vertical: Get.height * .0075),
              child: Text(
                '%$count',
                style: TextStyleConstants.RATE_TEXT_STYLE,
              ),
            ),
          ],
        ),
        Padding(
          padding: EdgeInsets.symmetric(vertical: Get.height * .005),
          child: Text(
            countText,
            style: TextStyleConstants.RATE_TEAM_NAME_TEXT_STYLE,
          ),
        )
      ],
    );
  }
}
