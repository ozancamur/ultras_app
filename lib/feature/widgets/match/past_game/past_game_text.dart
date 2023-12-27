import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../core/constants/color/color_constants.dart';
import '../../../../core/constants/style/text/text_style_constants.dart';
import '../../../view/fixture/model/child_model/teams_model.dart';
import 'past_game_team.dart';

class PastGameText extends StatelessWidget {
  const PastGameText({super.key, required this.teams});

  final FixtureTeamsModel? teams;

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: EdgeInsets.symmetric(horizontal: Get.width * .05,),
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
                  PastGameTeam(
                      teamName: '${teams!.home!.name}',
                      winCount: 4,
                      color: ColorConstants.BLACK),
                  PastGameTeam(
                      teamName: '${teams!.away!.name}',
                      winCount: 6,
                      color: ColorConstants.ULTRAS_CUSTOM_COLOR)
                ],
              ),
            )
          ],
        ),
      );
  }
}