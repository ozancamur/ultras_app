import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../core/components/button/text_button/atomic_text_button.dart';
import '../column/score_and_time_column.dart';
import '../list_tile/away_list_tile.dart';
import '../list_tile/home_list_tile.dart';

class MatchButton extends StatelessWidget {
  const MatchButton({super.key, required this.onPressed, required this.foregroundColor});

  final Function() onPressed;
  final Color foregroundColor;

  @override
  Widget build(BuildContext context) {
    return AtomicTextButton(
      onPressed: onPressed,
      style: TextButton.styleFrom(
        foregroundColor: foregroundColor,
        fixedSize: Size(Get.width, Get.height * .1),
        side: const BorderSide(width: .5, color: Colors.grey),
        shape: const RoundedRectangleBorder(borderRadius: BorderRadius.zero),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Flexible(
            flex: 3,
            child: SizedBox(
              width: Get.width * .425,
              child: const HomeListTile(),
            ),
          ),
          Flexible(
            flex: 1,
            child: SizedBox(
              width: Get.width * .1,
              child: const ScoreAndTimeColumn(),
            ),
          ),
          Flexible(
            flex: 3,
            child: SizedBox(
              width: Get.width * .425,
              child: const AwayListTile(),
            ),
          ),
        ],
      ),
    );
  }
}
