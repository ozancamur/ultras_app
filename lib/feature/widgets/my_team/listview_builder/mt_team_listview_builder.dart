import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:ultras_app/core/components/listview_builder/atomic_listview_builder.dart';
import 'package:ultras_app/feature/view/home/view/home_view.dart';
import 'package:ultras_app/feature/view/my_team/controller/my_team_controller.dart';
import 'package:ultras_app/feature/widgets/my_team/list_tile/mt_team_list_tile.dart';

class TeamListViewBuilder extends StatelessWidget {
  TeamListViewBuilder({
    required this.controller,
    super.key,
  });

  final MyTeamController controller;
    final box = GetStorage();

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => AtomicListViewBuilder(
        height: Get.height*.83,
        width: Get.width,
        length: controller.teamList.length,
        itemBuilder: (context, index) {
          final model = controller.teamList[index];
          return TeamListTile(
            team: model,
            teamPressed: () {
              box.write("myTeamID", model.id);
              Get.to(() => HomeView());
            },
          );
        },
      ),
    );
  }
}
