import 'package:flutter/material.dart';

import '../../../../core/components/appbar/atomic_app_bar.dart';

class MyTeamAppBar extends StatelessWidget implements PreferredSizeWidget {
  const MyTeamAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return AtomicAppBar(title: const Text("MY TEAM"), isDisplayBack: false,);
  }
  
  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}