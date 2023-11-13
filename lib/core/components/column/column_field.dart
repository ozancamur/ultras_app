import 'package:flutter/material.dart';

class AtomicColumn extends StatelessWidget {
  const AtomicColumn({
    required this.mainAxisAlignment,
    required this.crossAxisAlignment,
    required this.children,
    super.key,
  });

  final MainAxisAlignment mainAxisAlignment;
  final CrossAxisAlignment crossAxisAlignment;
  final List<Widget> children;
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: mainAxisAlignment,
      crossAxisAlignment: crossAxisAlignment,
      children: children,
    );
  }
}
