import 'package:flutter/material.dart';
import 'package:get/get.dart';

class TeamNameBox extends StatelessWidget {
  const TeamNameBox({super.key, required this.teamName});

  final String teamName;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: Get.width * .3,
      child: Text(
        teamName,
        style: const TextStyle(
          fontSize: 22.5,
          height: 0,
        ),
      ),
    );
  }
}
