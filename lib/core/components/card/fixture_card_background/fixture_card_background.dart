import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CardBackground extends StatelessWidget {
  const CardBackground(
      {super.key, required this.backgroundColor, required this.beforeColor});

  final Color backgroundColor;
  final Color beforeColor;

  @override
  Widget build(BuildContext context) {
    return CustomPaint(
      painter:
          MyPainter(backgroundColor: backgroundColor, beforeColor: beforeColor),
    );
  }
}

class MyPainter extends CustomPainter {
  MyPainter({required this.backgroundColor, required this.beforeColor});
  final Color backgroundColor;
  final Color beforeColor;
  @override
  void paint(
    Canvas canvas,
    Size size,
  ) {
    // Doğru başlangıç ve bitiş koordinatları
    double startLineX = Get.width;
    double startLineY = Get.height * .06;
    double startEndX = Get.width * .7;
    double startEndY = -5;

    // Dikdörtgeni çiz
    Paint paintRectangle = Paint()
      ..color = backgroundColor
      ..style = PaintingStyle.fill
      ..strokeWidth = 2.0;

    RRect rectangle = RRect.fromRectAndRadius(
      Rect.fromPoints(
        const Offset(0, 0),
        Offset(
          Get.width * .979,
          Get.height * .225,
        ),
      ),
      const Radius.elliptical(15, 15),
    );

    canvas.drawRRect(rectangle, paintRectangle);

    // Doğruyu çiz
    Paint paintLineOne = Paint()
      ..color = beforeColor
      ..style = PaintingStyle.fill
      ..strokeWidth = 8.0;

    canvas.drawLine(
      Offset(startLineX, startLineY),
      Offset(startEndX, startEndY),
      paintLineOne,
    );
/*
    Paint paintLineThree = Paint()
      ..color = beforeColor
      ..style = PaintingStyle.stroke
      ..strokeWidth = 8.0;

    double lineX3 = Get.width * .99;
    double lineY3 = -Get.height * .3;

    canvas.drawLine(
      Offset(lineX3, lineY3),
      Offset(lineX3, -lineY3),
      paintLineThree,
    );
  
*/
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return false;
  }
}
