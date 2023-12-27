import 'package:flutter/material.dart';

import '../../../../core/components/appbar/atomic_app_bar.dart';

class LeaguesAppBar extends StatelessWidget implements PreferredSizeWidget {
  const LeaguesAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return AtomicAppBar(
      isDisplayBack: false,
      title:const Text("ULTRAS",
      style: TextStyle(
        color: Colors.black,
      ),)
    );
  }
  
  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}