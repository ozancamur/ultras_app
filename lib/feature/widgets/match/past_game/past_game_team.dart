import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../core/constants/color/color_constants.dart';
import '../../../../core/constants/style/text/text_style_constants.dart';

class PastGameTeam extends StatelessWidget {
  const PastGameTeam({super.key, required this.teamName, required this.winCount, required this.color});

  final String teamName;
  final int winCount;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: Get.height*.05,
      width: Get.width * .5,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Text(
            teamName.toUpperCase(),
            style: TextStyleConstants.PAST_MATCH_TEAM_NAME_TEXT_STYLE(color)
          ),
          SizedBox(
            height: Get.height * .025,
            width: Get.width * .5,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              reverse: true,
              itemCount: winCount,
              itemBuilder: (context, index) {
                var result = index % 2;
                return Container(
                  height: Get.height * .025,
                  width: Get.width * .04,
                  margin: EdgeInsets.symmetric(horizontal: Get.width * .005),
                  decoration: BoxDecoration(
                    color: result == 1
                        ? ColorConstants.ULTRAS_CUSTOM_COLOR.withOpacity(.75)
                        : ColorConstants.BLACK,
                    borderRadius: BorderRadius.circular(30),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
