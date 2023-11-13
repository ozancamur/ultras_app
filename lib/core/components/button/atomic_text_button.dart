import 'package:flutter/material.dart';

class AtomicTextButton extends StatelessWidget {
  const AtomicTextButton({
    required this.onPressed,
    required this.style,
    required this.child,
    super.key,
  });

  final Function() onPressed;
  final ButtonStyle style;
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: onPressed,
      style: style,
      child: child,
    );
  }
}
