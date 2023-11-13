import 'package:flutter/material.dart';
import 'package:kartal/kartal.dart';
import 'package:ultras_app/core/constants/color/color_constants.dart';

class ButtonStyleConstants{
  ButtonStyleConstants(BuildContext context) : currentContext = context;
  final BuildContext currentContext;

  ButtonStyle get authButtonStyle => ElevatedButton.styleFrom(
        fixedSize: Size(
            currentContext.sized.dynamicWidth(.7),
            currentContext.sized.dynamicHeight(.06),
            ),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(50),
        ),
        backgroundColor: ColorConstants.ultrasAppBlue,
        foregroundColor: ColorConstants.ultrasAppWhite,
      );

  ButtonStyle get textButtonStyle => TextButton.styleFrom(
        padding: EdgeInsets.zero,
        minimumSize: Size.fromHeight(currentContext.sized.dynamicHeight(.05)),
        tapTargetSize: MaterialTapTargetSize.shrinkWrap,
        alignment: Alignment.center,
        foregroundColor: const Color.fromARGB(21, 167, 167, 167),
      );

      // * LOG IN VIEW
  
  ButtonStyle get forgotPasswordTextButtonStyle => TextButton.styleFrom(
        padding: EdgeInsets.zero,
        minimumSize: Size.fromHeight(currentContext.sized.dynamicHeight(.025)),
        tapTargetSize: MaterialTapTargetSize.shrinkWrap,
        alignment: Alignment.centerRight,
        foregroundColor: const Color.fromARGB(21, 167, 167, 167),

  );
}


