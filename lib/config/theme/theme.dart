import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:my_books_fe/config/costants/costants.dart';

class AppTheme {
  static ThemeData of(context) {
    var theme = Theme.of(context);
    return theme.copyWith(
        colorScheme: const ColorScheme(
          primary: AppColors.blue, // Colore primario
          primaryContainer: AppColors.cyan, // Variante del colore primario
          secondary: AppColors.cyan, // Colore secondario (puoi sostituire con un altro colore se necessario)
          secondaryContainer: AppColors.cyan, // Variante del colore secondario
          surface: AppColors.grey, // Colore della superficie (ad es. background di AppBar e Card)
          background: AppColors.darkGreyVariant, // Colore di sfondo
          error: AppColors.red, // Colore per gli errori
          onPrimary: AppColors.white, // Colore del testo quando è posizionato sul colore primario
          onSecondary: AppColors.cyan, // Colore del testo quando è posizionato sul colore secondario
          onSurface: AppColors.cyan, // Colore del testo quando è posizionato sulla superficie
          onBackground: AppColors.white, // Colore del testo quando è posizionato sullo sfondo
          onError: AppColors.cyan, // Colore del testo quando è posizionato sull'errore
          brightness: Brightness.light, // Luminosità del tema (light o dark)
        ),
        textTheme: GoogleFonts.robotoTextTheme(),
        buttonTheme: theme.buttonTheme.copyWith(
          minWidth: 50,
          buttonColor: AppColors.cyan,
        ),
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
              foregroundColor: AppColors.darkGreyVariant, // Colore del testo
              backgroundColor: AppColors.blue),
        ),
        outlinedButtonTheme: OutlinedButtonThemeData(
          style: OutlinedButton.styleFrom(
              foregroundColor: AppColors.cyan, side: const BorderSide(color: AppColors.cyan)),
        ),
        segmentedButtonTheme: SegmentedButtonThemeData(
          style: ButtonStyle(
            backgroundColor: MaterialStateProperty.resolveWith<Color>(
              (Set<MaterialState> states) {
                if (states.contains(MaterialState.selected)) {
                  return AppColors.blue;
                }
                return AppColors.darkGreyVariant;
              },
            ),
            textStyle: const MaterialStatePropertyAll<TextStyle?>(TextStyle(color: AppColors.black)),
          ),
        ),
        textButtonTheme: TextButtonThemeData(
            style: TextButton.styleFrom(iconColor: AppColors.cyan, foregroundColor: AppColors.cyan)),
        datePickerTheme: const DatePickerThemeData(backgroundColor: AppColors.darkGreyVariant),
        timePickerTheme: const TimePickerThemeData(
            backgroundColor: AppColors.darkGreyVariant,
            hourMinuteTextStyle: TextStyle(fontSize: 45),
            dayPeriodTextColor: AppColors.blue,
            dialBackgroundColor: AppColors.blue,
            dialHandColor: AppColors.cyan),
        tabBarTheme: const TabBarTheme(indicatorColor: AppColors.cyan, labelColor: AppColors.cyan),
        cardTheme: const CardTheme(color: AppColors.white),
        scaffoldBackgroundColor: AppColors.darkGreyVariant);
  }
}
