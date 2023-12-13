import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class TeamImageDottedBorder extends StatelessWidget {
  const TeamImageDottedBorder({super.key, required this.image});

  final String image;

  @override
  Widget build(BuildContext context) {
    return DottedBorder(
      strokeWidth: 1,
      dashPattern: const [5, 3],
      child: Padding(
        padding: EdgeInsets.all(Get.height * .003),
        child: CircleAvatar(
          maxRadius: Get.height * .025,
          backgroundColor: Colors.transparent,
          child: Image.network(image),
        ),
      ),
    );
  }
}