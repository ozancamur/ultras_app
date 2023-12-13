// ignore_for_file: non_constant_identifier_names

import 'package:flutter/material.dart';
import 'package:kartal/kartal.dart';

class ButtonStyleConstants{
  ButtonStyleConstants(BuildContext context) : currentContext = context;
  final BuildContext currentContext;

  ButtonStyle get TEXT_BUTTON_STYLE => TextButton.styleFrom(
        padding: EdgeInsets.zero,
        minimumSize: Size.fromHeight(currentContext.sized.dynamicHeight(.05)),
        tapTargetSize: MaterialTapTargetSize.shrinkWrap,
        alignment: Alignment.center,
        foregroundColor: const Color.fromARGB(21, 167, 167, 167),
      );


}


