import 'package:flutter/material.dart';

import '../custom_bottom_navigation_bar/ultras_bottom_bar.dart';

class UltrasViewBody extends StatelessWidget {
  const UltrasViewBody({super.key,required this.child});

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Stack(
        children: [
          child,
          UltrasBottomBar()
        ],
      ),
    );
  }
}