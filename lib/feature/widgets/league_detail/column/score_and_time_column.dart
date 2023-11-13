import 'package:flutter/material.dart';
import 'package:ultras_app/core/components/column/column_field.dart';

class ScoreAndTimeColumn extends StatelessWidget {
  const ScoreAndTimeColumn({super.key});

  @override
  Widget build(BuildContext context) {
    return const AtomicColumn(
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
