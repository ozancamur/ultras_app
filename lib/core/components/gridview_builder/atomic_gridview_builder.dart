import 'package:flutter/material.dart';

class AtomicGridViewBuilder extends StatelessWidget {
  const AtomicGridViewBuilder({
    super.key,
    required this.itemCount,
    required this.cardHeight,
    required this.crossAxisSpacing,
    required this.mainAxisSpacing,
    required this.crossAxisCount,
    required this.itemBuilder,
  });

  final int itemCount;
  final double cardHeight;
  final double crossAxisSpacing;
  final double mainAxisSpacing;
  final int crossAxisCount;
  final Widget? Function(BuildContext, int) itemBuilder;

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      itemCount: itemCount,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        mainAxisExtent: cardHeight,
        crossAxisSpacing: crossAxisSpacing,
        mainAxisSpacing: mainAxisSpacing,
        crossAxisCount: crossAxisCount,
      ),
      itemBuilder: itemBuilder,
    );
  }
}
