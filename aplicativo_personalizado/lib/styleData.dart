import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

ThemeData meuestilo = ThemeData(
    colorScheme: ColorScheme.fromSwatch().copyWith(
        primary: const Color.fromARGB(200, 5, 196, 28),
        secondary: Colors.yellowAccent),
    useMaterial3: true,
    primaryColor: const Color.fromARGB(255, 75, 255, 59),
    appBarTheme: AppBarTheme(
        color: Colors.deepOrange,
        titleTextStyle: GoogleFonts.aBeeZee(
            color: Colors.white, fontSize: 25, fontWeight: FontWeight.bold)),
    scaffoldBackgroundColor: Color.fromARGB(255, 243, 243, 243),
    textTheme: TextTheme(
      bodyMedium: GoogleFonts.aBeeZee(color: Colors.black),
    ),
    cardTheme: CardTheme(
      color: Colors.amber,
      shadowColor: Colors.blue,
      elevation: 10,
    ),
    elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
            backgroundColor: Colors.amber,
            foregroundColor: Colors.white,
            textStyle: GoogleFonts.aBeeZee())),
    inputDecorationTheme:
        InputDecorationTheme(labelStyle: GoogleFonts.aBeeZee()));


final ThemeData darkTheme = ThemeData(
  scaffoldBackgroundColor: Color.fromARGB(255, 0, 0, 0),
);