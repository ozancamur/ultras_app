import 'package:flutter/material.dart';

class AtomicListTile extends StatelessWidget {
  const AtomicListTile({
    this.contentPadding,
    this.leading,
    this.title,
    this.subtitle,
    this.trailing,
    super.key,
  });

  final EdgeInsetsGeometry? contentPadding;
  final Widget? leading;
  final Widget? title;
  final Widget? subtitle;
  final Widget? trailing;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      contentPadding: contentPadding,
      leading: leading,
      title: title,
      subtitle: subtitle,
      trailing: trailing,
    );
  }
}
