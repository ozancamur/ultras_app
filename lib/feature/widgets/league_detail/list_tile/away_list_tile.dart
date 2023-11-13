import 'package:flutter/material.dart';
import 'package:ultras_app/core/components/list_tile/atomic_list_tile.dart';

class AwayListTile extends StatelessWidget {
  const AwayListTile({super.key});

  @override
  Widget build(BuildContext context) {
    return const AtomicListTile(
      contentPadding: EdgeInsets.zero,
      title: Text(
        "Manchester City",
        textAlign: TextAlign.right,
      ),
      trailing: CircleAvatar(
        backgroundColor: Colors.black,
        child: Text(
          "t2",
          style: TextStyle(color: Colors.white),
        ),
      ),
    );
  }
}
