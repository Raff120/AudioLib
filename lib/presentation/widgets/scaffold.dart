import 'package:flutter/material.dart';
import 'package:flutter_speed_dial/flutter_speed_dial.dart';
import 'package:my_books_fe/config/costants/costants.dart';
import 'package:my_books_fe/presentation/widgets/app_bar.dart';
import 'package:my_books_fe/presentation/widgets/bottom_menu.dart';

class AppScaffold extends StatelessWidget {
  const AppScaffold({
    super.key,
    this.title,
    required this.body,
    this.background,
    this.tabBarList,
    this.tabController,
    this.floatingActionBtn,
    this.bottomMenuIndex = AppCostant.notAvailable,
    this.appBarActions,
  });
  final Color? background;
  final Widget? title;
  final Widget body;
  final FloatingActionButton? floatingActionBtn;
  final int bottomMenuIndex;
  final List<String>? tabBarList;
  final TabController? tabController;
  final List<Widget>? appBarActions;

  @override
  Widget build(BuildContext context) {
    var appBarSize = tabBarList == null ? AppSizes.appBarSize : AppSizes.appBarWithTabSize;
    var tabBars = <Tab>[];
    // ignore: unused_local_variable, no_leading_underscores_for_local_identifiers
    var _theme = Theme.of(context);
    if (tabBarList != null) {
      for (var i = 0; i < tabBarList!.length; i++) {
        tabBars.add(Tab(key: UniqueKey(), text: tabBarList![i]));
      }
    }
    var tabWidget = (tabBars.isNotEmpty
        ? TabBar(
            unselectedLabelStyle: const TextStyle(fontWeight: FontWeight.normal),
            labelStyle: const TextStyle(fontWeight: FontWeight.bold),
            tabs: tabBars,
            controller: tabController,
            indicatorSize: TabBarIndicatorSize.tab)
        : null);
    return Scaffold(
        resizeToAvoidBottomInset: true,
        backgroundColor: background ?? AppColors.darkGreyVariant,
        appBar: title != null
            ? PreferredSize(
                preferredSize: Size.fromHeight(appBarSize), // here the desired height
                child: AppTopBar(
                  title: title!,
                  tabWidget: tabWidget,
                  actions: appBarActions,
                ),
              )
            : null,
        body: body,
        bottomNavigationBar: bottomMenuIndex != AppCostant.notAvailable ? AppBottomMenu(bottomMenuIndex) : null,
        floatingActionButton: floatingActionBtn != null
            ? const SpeedDial(
                animatedIcon: AnimatedIcons.menu_close,
                animatedIconTheme: IconThemeData(size: 22),
                visible: true,
                curve: Curves.bounceIn,
                children: [],
              )
            : null);
  }
}
