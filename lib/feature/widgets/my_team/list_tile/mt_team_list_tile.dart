import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:kartal/kartal.dart';

import '../../../../core/components/list_tile/atomic_list_tile.dart';
import '../../../../core/constants/style/text/text_style_constants.dart';
import '../../../view/my_team/model/my_team_model.dart';

class TeamListTile extends StatelessWidget {
  const TeamListTile({
    required this.team,
    required this.teamPressed,
    super.key,
  });

  final MyTeamModel team;
  final Function() teamPressed;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: context.padding.verticalLow,
      child: SizedBox(
        height: Get.height * .05,
        width: Get.width,
        child: AtomicListTile(
          leading: Image.network(
            team.logo,
            width: Get.width * .15,
            height: Get.height * .05,
          ),
          title: Text(
            team.name,
            style: TextStyleConstants.listTileTitleTextStyle,
          ),
          subtitle: Text(
            '${team.founded}',
            style: TextStyleConstants.listTileSubTitleTextStyle,
          ),
          trailing: IconButton(
            onPressed: teamPressed,
            icon: const Icon(Icons.favorite),
          ),
        ),
      ),
    );
  }
}
