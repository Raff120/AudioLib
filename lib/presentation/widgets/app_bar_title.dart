import 'package:flutter/material.dart';
import 'package:my_books_fe/config/costants/costants.dart';
import 'package:my_books_fe/config/costants/strings.dart';

class AppBarTitle extends StatelessWidget {
  const AppBarTitle({super.key});

  @override
  Widget build(BuildContext context) {
    return const Text(
      AppStrings.appTitle,
      style: TextStyle(
        fontSize: AppSizes.titleFontSize,
        fontFamily: AppFonts.dockerOne,
      ),
    );
  }
}
