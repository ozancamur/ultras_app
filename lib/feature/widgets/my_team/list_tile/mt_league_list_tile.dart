import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:kartal/kartal.dart';

import '../../../../core/components/list_tile/atomic_list_tile.dart';
import '../../../../core/constants/style/text/text_style_constants.dart';
import '../../../view/my_team/model/my_leagues_model.dart';

class LeagueListTile extends StatelessWidget {
  const LeagueListTile({
    required this.league,
    required this.countryPressed,
    super.key,
  });

  final MyLeagueModel league;
  final Function() countryPressed;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: context.padding.verticalLow,
      child: SizedBox(
        height: Get.height * .05,
        width: Get.width,
        child: AtomicListTile(
          leading: Image.network(
            league.logo,
            width: Get.width * .15,
            height: Get.height * .05,
          ),
          title: Text(
            league.name,
            style: TextStyleConstants.LIST_TILE_TITLE_TEXT_STYLE,
          ),
          subtitle: Text(
            league.type,
            style: TextStyleConstants.LIST_TILE_SUBTITLE_TEXT_STYLE,
          ),
          trailing: IconButton(
            onPressed: countryPressed,
            icon: const Icon(
              Icons.keyboard_arrow_right,
            ),
          ),
        ),
      ),
    );
  }
}
