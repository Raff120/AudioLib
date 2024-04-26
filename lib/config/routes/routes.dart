import 'package:flutter/cupertino.dart';
import 'package:my_books_fe/presentation/feature/home/home_page.dart';

class AppRoutes {
  //ROUTES
  static const home = 'home';

  //IDENTIFIERS
  static const idHome = 0;
  static const idPlayer = 1;
  static const idLibrary = 2;

  static Route<dynamic> generatedRoutes(RouteSettings settings) {
    // final args = settings.arguments;

    switch (settings.name) {
      case home:
        return CupertinoPageRoute(
          builder: (context) => const HomePage(),
        );
      default:
        return CupertinoPageRoute(
          builder: (context) => const HomePage(),
        );
    }
  }
}
