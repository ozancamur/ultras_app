import 'package:flutter/material.dart';

class AtomicCard extends StatelessWidget {
  const AtomicCard({
    super.key,
    this.margin,
    this.elevation,
    this.color,
    this.elevationColor,
    this.shadowColor,
    required this.child,
  });

  final EdgeInsetsGeometry? margin;
  final double? elevation;
  final Color? color;
  final Color? elevationColor;
  final Color? shadowColor;
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: margin,
      elevation: elevation,
      color: color,
      surfaceTintColor: elevationColor,
      shadowColor: shadowColor,
      child: child,
    );
  }
}
