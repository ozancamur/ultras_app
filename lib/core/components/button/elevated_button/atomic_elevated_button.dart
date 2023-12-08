import 'package:flutter/material.dart';

class AtomicElevatedButton extends StatelessWidget {
  const AtomicElevatedButton({
    required this.onPressed,
    required this.child,
    required this.style,
    super.key,
  });

  final Function() onPressed;
  final Widget child;
  final ButtonStyle style;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: style,
      child: child,
    );
  }
}
