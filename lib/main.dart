import 'package:flutter/material.dart';
import 'package:my_books_fe/config/costants/strings.dart';
import 'package:my_books_fe/config/theme/theme.dart';
import 'package:my_books_fe/presentation/feature/home/home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: AppStrings.appTitle,
      theme: AppTheme.of(context),
      home: const HomePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}