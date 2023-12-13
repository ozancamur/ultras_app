import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LeagueImage extends StatelessWidget {
  const LeagueImage({super.key, required this.imageUrl});

  final String imageUrl;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: Get.height * .05,
      child: Padding(
        padding: EdgeInsets.only(left: Get.width * .04),
        child: Image.asset('assets/logo/ultras_logo.png'),
        // child: Image.network(imageUrl),
      ),
    );
  }
}