import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../core/components/gridview_builder/atomic_gridview_builder.dart';
import '../../../view/fixture/view/fixture_view.dart';
import '../../../view/leagues/controller/leagues_controller.dart';
import '../../../view/leagues/model/league_model.dart';
import '../card/league_card.dart';

class LeaguesGridViewBuilder extends StatelessWidget {
  const LeaguesGridViewBuilder(
      {super.key, required this.controller, required this.models});

  final LeaguesController controller;
  final List<LeagueModel> models;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
          left: Get.width * .015,
          right: Get.width * .015),
      child: SizedBox(
        height: Get.height,
        width: Get.width,
        child: Obx(
          () => AtomicGridViewBuilder(
            itemCount: models.length,
            cardHeight: Get.height * .2,
            crossAxisSpacing: 10,
            mainAxisSpacing: 10,
            crossAxisCount: 3,
            itemBuilder: (context, index) {
              final model = models[index];
              return LeagueCard(
                model: model,
                elevationColor:
                    Colors.primaries[index * 100 % Colors.primaries.length],
                onPressed: () => Get.to(
                  () => FixtureView(
                    leagueID: model.id!,
                    leagueImage: model.logo!,
                    leagueName: model.name!,
                  ),
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}
