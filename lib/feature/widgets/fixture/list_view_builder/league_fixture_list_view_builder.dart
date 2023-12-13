import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';

import '../../../../core/components/card/fixture_card/fixture_card.dart';
import '../../../../core/components/listview_builder/atomic_listview_builder.dart';
import '../../../view/fixture/model/parent_model/fixture_response_model.dart';

class LeagueFixtureListViewBuilder extends StatelessWidget {
  const LeagueFixtureListViewBuilder({super.key, required this.list});

  final List<FixtureResponseModel> list;

  @override
  Widget build(BuildContext context) {
    return AtomicListViewBuilder(
        height: Get.height * .7,
        width: Get.width,
        length: list.length,
        itemBuilder: (context, index) {
          Color backgroundColor =
              Colors.primaries[index * 50 % Colors.primaries.length];
          Color beforeColor = index == 0
              ? Colors.white
              : Colors.primaries[(index - 1) * 50 % Colors.primaries.length];
          var model = list[index];
          return FixtureCard(
            backgroundColor: backgroundColor,
            beforeColor: beforeColor,
            model: model,
            dateTime: DateFormat("yyyy-MM-dd'T'HH:mm")
                .parse(model.fixture!.date.toString()),
          );
        });
  }
}
