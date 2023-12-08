import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../../core/components/column/column_field.dart';
import '../../../../core/constants/style/text/text_style_constants.dart';

class MyTeamColumn extends StatelessWidget {
  const MyTeamColumn({
    required this.chooseText,
    required this.listViewBuilder,
    super.key,
  });

  final String chooseText;
  final Widget listViewBuilder;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: Get.width*.025),
      child: AtomicColumn(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            chooseText,
            style: TextStyleConstants.chooseTextStyle,
          ),
          listViewBuilder,
        ],
      ),
    );
  }
}
