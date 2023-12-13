import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ultras_app/core/constants/color/color_constants.dart';

class TeamImageDottedBorder extends StatelessWidget {
  const TeamImageDottedBorder({super.key, required this.image});

  final String image;

  @override
  Widget build(BuildContext context) {
    return DottedBorder(
      color: ColorConstants.GREY,
      strokeWidth: 1.5,
      dashPattern: const [5, 3],
      child: Padding(
        padding: EdgeInsets.all(Get.height * .004),
        child: CircleAvatar(
          maxRadius: Get.height * .024,
          backgroundColor: Colors.transparent,
          child: Image.network(image),
        ),
      ),
    );
  }
}