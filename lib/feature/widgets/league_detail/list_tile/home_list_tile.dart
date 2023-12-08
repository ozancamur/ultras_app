import 'package:flutter/material.dart';

import '../../../../core/components/list_tile/atomic_list_tile.dart';

class HomeListTile extends StatelessWidget {
  const HomeListTile({super.key});

  @override
  Widget build(BuildContext context) {
    return const AtomicListTile(
      contentPadding: EdgeInsets.zero,
      leading: CircleAvatar(
        backgroundColor: Colors.black,
        child: Text(
          "t1",
          style: TextStyle(color: Colors.white),
        ),
      ),
      title: Text(
        "Manchester United",
        style: TextStyle(color: Colors.black),
      ),
    );
  }
}
