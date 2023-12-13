import 'package:flutter/material.dart';
import 'package:ultras_app/core/components/appbar/atomic_app_bar.dart';

class FixtureDetailAppBar extends StatelessWidget implements PreferredSizeWidget {
  const FixtureDetailAppBar({super.key, required this.backgroundColor});

  final Color backgroundColor;

  @override
  Widget build(BuildContext context) {
    return AtomicAppBar(isDisplayBack: true, backgroundColor: backgroundColor,);
  }

    @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}