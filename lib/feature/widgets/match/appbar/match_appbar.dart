import 'package:flutter/material.dart';
import 'package:ultras_app/core/components/appbar/atomic_app_bar.dart';

class MatchAppBar extends StatelessWidget implements PreferredSizeWidget {
  const MatchAppBar({super.key, required this.backgroundColor});

  final Color backgroundColor;

  @override
  Widget build(BuildContext context) {
    return AtomicAppBar(isDisplayBack: true, backgroundColor: backgroundColor);
  }

    @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}