import 'package:flutter/material.dart';

class AtomicListViewBuilder extends StatelessWidget {
  const AtomicListViewBuilder({
    required this.height,
    required this.width,
    required this.length,
    required this.itemBuilder,
    super.key,
  });

  final double height;
  final double width;
  final int length;
  final Widget Function(BuildContext, int) itemBuilder;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height,
      width: width,
      child: ListView.builder(
        itemCount: length,
        itemBuilder: itemBuilder,
      ),
    );
  }
}
