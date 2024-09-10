import 'package:flutter/material.dart';
import 'package:quiz/paginaFinal.dart';
import 'package:quiz/paginaInicial.dart';
import 'package:quiz/paginaPerguntas.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/',
      routes: {
        '/PaginaInicial' : (context) => PaginaInicial(),
        '/PaginaPerguntas': (context) => PaginaPerguntas(),
        '/PaginaFinal': (context) => PaginaFinal()
      },
      title: 'Quiz Time',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: PaginaInicial(),
    );
  }
}

