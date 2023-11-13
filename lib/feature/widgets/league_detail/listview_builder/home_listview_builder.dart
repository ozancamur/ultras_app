import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ultras_app/core/components/listview_builder/atomic_listview_builder.dart';

class HomeLeagueListViewBuilder extends StatelessWidget {
  const HomeLeagueListViewBuilder(
      {super.key, required this.length, required this.itemBuilder});

  final int length;
  final Widget Function(BuildContext, int) itemBuilder;

  @override
  Widget build(BuildContext context) {
    return AtomicListViewBuilder(
      height: Get.height,
      width: Get.width,
      length: length,
      itemBuilder: itemBuilder,
    );
  }
}
