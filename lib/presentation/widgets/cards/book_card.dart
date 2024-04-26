import 'package:flutter/material.dart';
import 'package:my_books_fe/config/costants/costants.dart';

class BookCard extends StatelessWidget {
  const BookCard({super.key});

  @override
  Widget build(BuildContext context) {
  return Column(
    children: [
      ClipRRect(
        borderRadius: BorderRadius.circular(10.0),
        child: Image.asset(
          AppAssetsImage.bookPlaceholderImg,
          width: 200,
        ),
      ),
      const SizedBox(height: 10), // Aggiungo un po' di spazio tra l'immagine e il testo
      const Text(
        "Continua ad ascoltare",
        style: TextStyle(
          color: Colors.white, // Testo bianco
          fontWeight: FontWeight.w900, // Testo in grassetto
          fontSize: 20, // Dimensione del font 20px
        ),
        textAlign: TextAlign.center, // Testo centrato
      ),
    ],
  );
}

}
