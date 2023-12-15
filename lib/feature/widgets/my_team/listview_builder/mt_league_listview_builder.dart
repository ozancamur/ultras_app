import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

import '../../../../core/components/listview_builder/atomic_listview_builder.dart';
import '../../../view/my_team/controller/my_team_controller.dart';
import '../list_tile/mt_league_list_tile.dart';

class LeagueListViewBuilder extends StatelessWidget {
  LeagueListViewBuilder({
    required this.controller,
    super.key,
  });

  final MyTeamController controller;

  final box = GetStorage();

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => AtomicListViewBuilder(
        height: Get.height * .83,
        width: Get.width,
        length: controller.leagueList.length,
        itemBuilder: (context, index) {
          final model = controller.leagueList[index];
          return LeagueListTile(
            league: model,
            countryPressed: () {
              controller.leagueSelected.value = true;
              controller.getTeamsOfLeague(model.id);
            },
          );
        },
      ),
    );
  }
}
