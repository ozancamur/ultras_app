import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:rive/rive.dart';

class UltrasLoading extends StatelessWidget {
  const UltrasLoading({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        height: Get.height,
        width: Get.width,
        decoration: const BoxDecoration(
          color: Colors.black,
        ),
        child: const RiveAnimation.asset("assets/rive/football_loading.riv",
        artboard: "New Artboard",),
      )
    );
  }
}