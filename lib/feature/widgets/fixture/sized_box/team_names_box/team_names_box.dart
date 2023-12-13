import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ultras_app/feature/widgets/fixture/sized_box/team_name_box/team_name_box.dart';

class TeamNamesBox extends StatelessWidget {
  const TeamNamesBox({
    super.key,
    required this.home,
    required this.away,
  });

  final String home;
  final String away;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: Get.width * .6,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          TeamNameBox(teamName: home,),
          TeamNameBox(teamName: away,)
        ],
      ),
    );
  }
}
