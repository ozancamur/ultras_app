import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../core/components/card/fixture_card_background/fixture_card_background.dart';
import '../../../../core/components/sized_box/match_time_box.dart';
import '../../../../core/components/sized_box/team_names_box.dart';
import '../../../../core/constants/color/color_constants.dart';
import '../../../view/fixture/model/parent_model/fixture_response_model.dart';
import '../../fixture/dotted_border/team_image.dart';
import '../column/match_date_column.dart';

class MatchCard extends StatelessWidget {
  const MatchCard({
    super.key,
    required this.backgroundColor,
    required this.beforeColor,
    required this.model,
    required this.dateTime,
  });

  final Color backgroundColor;
  final Color beforeColor;
  final FixtureResponseModel model;
  final DateTime dateTime;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: Get.width * .01),
      child: Stack(
        children: [
          buildBoxBackgroundField(),
          buildMatchDetailField(),
        ],
      ),
    );
  }

  buildBoxBackgroundField() {
    return CardBackground(
      backgroundColor: backgroundColor,
      beforeColor: beforeColor,
    );
  }

  buildMatchDetailField() {
    return SizedBox(
      height: Get.height * .225,
      child: Padding(
        padding: EdgeInsets.symmetric(
            vertical: Get.height * .01, horizontal: Get.width * .02),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            buildMatchDateField(),
            buildTeamImage(),
            buildTeamNamesField()
          ],
        ),
      ),
    );
  }

  buildMatchDateField() {
    return SizedBox(
      height: Get.height * .04,
      width: Get.width * .6,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Image.network(
              'https://www.fifplay.com/img/public/premier-league-logo.png'),
          MatchDateColumn(
            day: dateTime.day,
            monthIndex: dateTime.month,
          ),
        ],
      ),
    );
  }

  buildTeamImage() {
    return SizedBox(
      height: Get.height * .06,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          TeamImageDottedBorder(image: '${model.teams!.home!.logo}'),
          MatchTimeBox(
            hour: 21,
            minute: 30,
            fontSize: 70.0,
          ),
          TeamImageDottedBorder(image: '${model.teams!.away!.logo}'),
        ],
      ),
    );
  }

  buildTeamNamesField() {
    return Container(
      height: Get.height * .065,
      width: Get.width,
      padding: EdgeInsets.only(top: Get.height * .01),
      decoration: BoxDecoration(
          border:
              Border(top: BorderSide(width: 1, color: ColorConstants.GREY))),
      child: TeamNamesBox(
          home: 'Manchester United',
          away: 'Manchester City',
          width: Get.width,
          child: Text(
            'Premier League',
            style: TextStyle(color: ColorConstants.ULTRAS_WHITE),
          )),
    );
  }
}
