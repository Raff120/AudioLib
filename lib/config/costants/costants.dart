import 'package:flutter/material.dart';

class AppColors {
  static const blue = Color(0xFF006BD6);
  static const cyan = Color(0xFF008988);
  static const darkOrange = Color(0xFFD66B00);
  static const darkGreyVariant = Color(0xFF242424);
  static const darkGrey = Color(0xFF2C2C2C);
  static const grey = Color(0xFF3B3B3B);
  static const white = Colors.white;
  static const black = Colors.black;
  static const whiteSmoke = Color(0xFFE5E5E5);
  static const red = Colors.red;
  static const orange = Color(0xFFFF8000);
}

class AppSizes {
  //App Sizes
  static const double titleFontSize = 34;
  static const double bottomMenuWidth = 75;
  static const double bottomMenuHeight = 40;
  static const double bottomNavRadius = 15;
  static const double iconSize = 30;
  static const appBarSize = 60.0;
  static const appBarWithTabSize = 100.0;
  
}

class AppCostant {
  //App Costants
  static const notAvailable = -1;
}

class AppFonts {
  static const String dockerOne = "docker_one";
}

class AppAssetsImage {
  static const bookPlaceholderImg = "images/book_placeholder.jpg";
}

class AppRegExp {
  static const String onlyLettersString = '[a-zA-Z ]';
  static RegExp onlyLetters = RegExp(onlyLettersString);
  static const String noSpacesString = r'\s';
  static RegExp noSpaces = RegExp(noSpacesString);
  static RegExp haveUppercaseLetter = RegExp(r'[A-Z]');
  static RegExp haveLowercaseLetter = RegExp(r'[a-z]');
  static RegExp haveNumber = RegExp(r'\d');
  static RegExp validEmail = RegExp(
      r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$');
}