import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:rive/rive.dart';

import '../../constants/rive/rive_constants.dart';

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
        child: RiveAnimation.asset(
          RiveConstants.RIVE_LOADING,
          artboard: RiveConstants.RIVE_NEW_ARTBOARD,
        ),
      ),
    );
  }
}
