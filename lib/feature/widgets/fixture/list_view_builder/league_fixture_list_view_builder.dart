import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';
import 'package:ultras_app/core/components/listview_builder/atomic_listview_builder.dart';
import 'package:ultras_app/feature/view/fixture/model/parent_model/fixture_response_model.dart';
import 'package:ultras_app/feature/widgets/fixture/card/fixture_card.dart';

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
      }
    );
  }
}