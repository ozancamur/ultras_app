import 'package:flutter/material.dart';

import '../../../../core/components/card/atomic/atomic_card.dart';
import '../../../view/home/model/league_model.dart';
import '../../league_detail/column/league_card_column.dart';

class LeagueCard extends StatelessWidget {
  const LeagueCard({
    super.key,
    required this.model,
    required this.elevationColor,
    required this.onPressed,
  });

  final LeagueModel model;
  final Color elevationColor;
  final Function() onPressed;

  @override
  Widget build(BuildContext context) {
    return AtomicCard(
      color: elevationColor,
      elevationColor: elevationColor,
      margin: EdgeInsets.zero,
      elevation: 5,
      shadowColor: Colors.black,
      child: LeagueCardColumn(logo: model.logo!,name: model.name!,color: elevationColor,onPressed: onPressed,)
    );
  }
}
