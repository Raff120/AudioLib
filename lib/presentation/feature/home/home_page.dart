import 'package:flutter/material.dart';
import 'package:my_books_fe/config/routes/routes.dart';
import 'package:my_books_fe/presentation/widgets/cards/book_card.dart';
import 'package:my_books_fe/presentation/widgets/scaffold.dart';

class HomePage extends StatelessWidget {
  static const String routeName = '/home';

  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return const AppScaffold(
      bottomMenuIndex: AppRoutes.idHome,
      body: Padding(
        padding: EdgeInsets.only(top: 50.0, bottom: 0, left: 8.0, right: 8.0),
        child: Center(
          child: BookCard(),
        ),
      ),
    );
  }
}
