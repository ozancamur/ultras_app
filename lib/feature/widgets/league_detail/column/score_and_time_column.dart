import 'package:flutter/material.dart';

class ScoreAndTimeColumn extends StatelessWidget {
  const ScoreAndTimeColumn({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Text(
          "2-1",
          style: TextStyle(
              color: Colors.black, fontSize: 20),
        ),
        Text(
          "99'",
          style: TextStyle(
              color: Colors.red, fontSize: 14),
        ),
      ],
    );
  }
}
