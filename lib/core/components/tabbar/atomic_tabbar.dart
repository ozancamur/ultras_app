import 'package:flutter/material.dart';

class AtomicTabBar extends StatelessWidget {
  const AtomicTabBar({
    super.key,
    required this.padding,
    required this.labelPadding,
    required this.indicatorPadding,
    required this.dividerColor,
    required this.overlayColor,
    required this.labelColor,
    required this.unselectedLabelColor,
    required this.labelStyle,
    required this.unselectedLabelStyle,
    required this.indicator,
    required this.tabs,
  });

  final EdgeInsetsGeometry padding;
  final EdgeInsetsGeometry labelPadding;
  final EdgeInsetsGeometry indicatorPadding;
  final Color dividerColor;
  final Color overlayColor;
  final Color labelColor;
  final Color unselectedLabelColor;
  final TextStyle labelStyle;
  final TextStyle unselectedLabelStyle;
  final Decoration indicator;
  final List<Widget> tabs;

  @override
  Widget build(BuildContext context) {
    return TabBar(
      indicatorSize: TabBarIndicatorSize.tab,
      padding: padding,
      labelPadding: labelPadding,
      indicatorPadding: indicatorPadding,
      dividerColor: dividerColor,
      overlayColor: MaterialStatePropertyAll(overlayColor),
      labelColor: labelColor,
      unselectedLabelColor: unselectedLabelColor,
      labelStyle: labelStyle,
      unselectedLabelStyle: unselectedLabelStyle,
      indicator: indicator,
      tabs: tabs,
    );
  }
}
