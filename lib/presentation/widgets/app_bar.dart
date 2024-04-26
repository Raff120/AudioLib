import 'package:flutter/material.dart';

class AppTopBar extends StatelessWidget {
  const AppTopBar({super.key, this.title, this.tabWidget, this.actions});

  final Widget? title;
  final PreferredSizeWidget? tabWidget;
  final List<Widget>? actions;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: title != null ? title! : null,
      actions: actions,
      bottom: tabWidget,
      centerTitle: true,
    );
  }
}
