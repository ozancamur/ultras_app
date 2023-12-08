import 'package:flutter/material.dart';
import 'package:kartal/kartal.dart';

import '../../../../core/constants/style/text/text_style_constants.dart';

class SplashView extends StatefulWidget {
  const SplashView({super.key});

  @override
  State<SplashView> createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashView> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: EdgeInsets.only(
            top: context.sized.dynamicHeight(.8)
          ),
          child: SizedBox(
            height: context.sized.dynamicHeight(.15),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Center(
                  child: CircularProgressIndicator(),
                ),
                Text("version 1.0.0", style: TextStyleConstants.labelStyle,)
              ],
            ),
          ),
        ),
      ),
    );
  }
}
