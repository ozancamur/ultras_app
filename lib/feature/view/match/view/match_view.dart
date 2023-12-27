// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ultras_app/feature/widgets/match/past_game/past_game_rate.dart';

import '../../../../core/components/body/ultras_view_body.dart';
import '../../../../core/constants/color/color_constants.dart';
import '../../../../core/init/base/view/base_view.dart';
import '../../../widgets/match/appbar/match_appbar.dart';
import '../../../widgets/match/box/match_red_box.dart';
import '../../../widgets/match/card/match_card.dart';
import '../../../widgets/match/past_game/past_game_text.dart';
import '../../../widgets/match/text/match_text.dart';
import '../../fixture/model/parent_model/fixture_response_model.dart';
import '../controller/match_controller.dart';

class MatchView extends StatelessWidget {
  MatchView({
    super.key,
    required this.model,
    required this.leagueImage,
    required this.leagueName,
    required this.backgroundColor,
  });

  final FixtureResponseModel model;
  final String leagueImage;
  final String leagueName;
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
    return Positioned.fill(
      top: Get.height * .65,
      child: const RedBox(),
    );
  }

  buildMatchCardField() {
    return Positioned.fill(
      top: Get.height * .5,
      child: MatchCard(
        backgroundColor: ColorConstants.WHITE,
        beforeColor: backgroundColor,
        model: model,
        dateTime: DateTime.now(),
        leagueImage: leagueImage,
        leagueName: leagueName,
      ),
    );
  }

  buildPastGameTextField() {
    return Positioned.fill(
      top: Get.height * .15,
      child: PastGameText(
        teams: model.teams,
      ),
    );
  }

  buildPastGameRateField() {
    return Positioned(
      top: Get.height * .275,
      child: const PastGameRate(),
    );
  }
}
