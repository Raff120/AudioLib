import 'package:flutter/material.dart';
import 'package:my_books_fe/config/costants/costants.dart';
import 'package:my_books_fe/config/costants/strings.dart';
import 'package:my_books_fe/config/routes/routes.dart';
import 'package:my_books_fe/presentation/feature/home/home_page.dart';

class AppBottomMenu extends StatelessWidget {
  final int menuIndex;

  const AppBottomMenu(this.menuIndex, {super.key});

  Color colorByIndex(ThemeData theme, int index) {
    return index == menuIndex ? theme.primaryColor : theme.primaryColorLight;
  }

  BottomNavigationBarItem getItem(
      IconData activeIcon, IconData icon, String title) {
    return BottomNavigationBarItem(
      activeIcon: Container(
          width: AppSizes.bottomMenuWidth,
          height: AppSizes.bottomMenuHeight,
          decoration: const BoxDecoration(
            color: AppColors.grey,
            shape: BoxShape.rectangle,
            borderRadius:
                BorderRadius.all(Radius.circular(AppSizes.bottomNavRadius)),
          ),
          child: Icon(activeIcon)),
      icon: Icon(icon),
      label: title,
    );
  }

  PageRouteBuilder getPageRouteBuilder(var screen) {
    return PageRouteBuilder(
        pageBuilder: (_, __, ___) => screen,
        transitionDuration: const Duration(seconds: 0));
  }

  @override
  Widget build(BuildContext context) {
    List<BottomNavigationBarItem> menuItems = [
      getItem(Icons.home, Icons.home_outlined, AppStrings.home),
      getItem(Icons.play_circle, Icons.play_circle, AppStrings.player),
      getItem(
          Icons.menu_book_rounded, Icons.menu_book_rounded, AppStrings.library),
    ];
    // ignore: avoid_unnecessary_containers
    return Container(
      child: Theme(
        data: Theme.of(context).copyWith(
          splashColor: Colors.transparent,
          splashFactory: NoSplash.splashFactory,
          highlightColor: Colors.transparent,
        ),
        child: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          backgroundColor: AppColors.darkGrey,
          currentIndex: menuIndex,
          selectedItemColor: AppColors.blue,
          unselectedItemColor: AppColors.white,
          iconSize: AppSizes.iconSize,
          onTap: (value) {
            switch (value) {
              case AppRoutes.idHome:
                Navigator.pushReplacement(
                    context,
                    getPageRouteBuilder(
                      const HomePage(),
                    ));
                break;
              case AppRoutes.idPlayer:
                // Navigator.pushReplacement(
                //     context,
                //     getPageRouteBuilder(
                //       const MatchScreen(),
                //     ));
                break;
              case AppRoutes.idLibrary:
                // Navigator.pushReplacement(
                //     context,
                //     getPageRouteBuilder(
                //       const ProfileScreen(),
                //     ));
                break;
            }
          },
          items: menuItems,
        ),
      ),
    );
  }
}
