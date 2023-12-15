// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';

import '../../constants/style/text/text_style_constants.dart';

class MatchTimeBox extends StatelessWidget {
  MatchTimeBox({
    super.key,
    required this.hour,
    required this.minute,
    this.fontSize = 35.0,
  });

  final int hour;
  final int minute;
  final double? fontSize;

  String txtHour = '';
  String txtMinute = '';

  @override
  Widget build(BuildContext context) {
    if (hour < 10) {
      txtHour = '0$hour';
    } else {
      txtHour = '$hour';
    }
    if (minute < 10) {
      txtMinute = '0$minute';
    } else {
      txtMinute = '$minute';
    }
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Text(
          txtHour,
          style: TextStyleConstants.MATCH_TIME_BOX_HOUR_TEXT_STYLE(fontSize!),
        ),
        Text(
          ":$txtMinute",
          style:
              TextStyleConstants.MATCH_TIME_BOX_MINUTE_TEXT_STYLE(fontSize!),
        ),
      ],
    );
  }
}
