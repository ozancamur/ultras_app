import 'package:flutter/material.dart';

class AtomicTabBarView extends StatelessWidget {
  const AtomicTabBarView({
    super.key,
    required this.tabViews,
  });

  final List<Widget> tabViews;

  @override
  Widget build(BuildContext context) {
    return TabBarView(children: tabViews);
  }
}
