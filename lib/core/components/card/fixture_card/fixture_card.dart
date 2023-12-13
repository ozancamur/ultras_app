import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ultras_app/core/components/card/fixture_card_background/fixture_card_background.dart';
import 'package:ultras_app/feature/view/fixture/model/parent_model/fixture_response_model.dart';
import 'package:ultras_app/feature/view/fixture_detail/view/fixture_detail_view.dart';
import 'package:ultras_app/feature/widgets/fixture/column/date/match_date_box.dart';
import 'package:ultras_app/feature/widgets/fixture/dotted_border/team_image.dart';
import 'package:ultras_app/feature/widgets/fixture/sized_box/match/time/match_time_box.dart';
import 'package:ultras_app/feature/widgets/fixture/sized_box/team_names/team_names_box.dart';

class FixtureCard extends StatelessWidget {
  const FixtureCard({
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
    return GestureDetector(
      onTap: () {
        Get.to(() => FixtureDetailView(model: model, backgroundColor: backgroundColor,));
      },
      child: Stack(
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
      ),
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
            TeamImageDottedBorder(image: '${model.teams!.home!.logo}'),
            TeamImageDottedBorder(image: '${model.teams!.away!.logo}'),
            MatchDateColumn(
              day: dateTime.day,
              monthIndex: dateTime.month,
            ),
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
          MatchTimeBox(hour: dateTime.hour, minute: dateTime.minute,),
          TeamNamesBox(
            home: '${model.teams!.home!.name}',
            away: '${model.teams!.away!.name}',
          )
        ],
      ),
    );
  }
}
