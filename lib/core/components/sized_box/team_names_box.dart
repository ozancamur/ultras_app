import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ultras_app/core/components/sized_box/team_name_box.dart';

class TeamNamesBox extends StatelessWidget {
  const TeamNamesBox({
    super.key,
    required this.home,
    required this.away,
    this.child,
    this.width,
  });

  final String home;
  final String away;
  final Widget? child;
  final double? width;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width ?? Get.width * .6,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.end,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          TeamNameBox(teamName: home),
          child ?? const SizedBox.shrink(),
          TeamNameBox(teamName: away)
        ],
      ),
    );
  }
}
